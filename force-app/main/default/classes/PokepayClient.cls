public with sharing class PokepayClient {

    public String clientId;
    public String clientSecret;
    public String baseUrl;
    public String sslCertName;
    public Http client;
    public HttpRequest req;

    public PokepayClient(String clientId, String clientSecret, String baseUrl, String sslCertName) {
        this.clientId = clientId;
        this.clientSecret = clientSecret;
        this.baseUrl = baseUrl;
        this.sslCertName = sslCertName;
        this.client = new Http();
        this.req = new HttpRequest();
        req.setClientCertificateName(sslCertName);
    }

    // Base64 urlsafe encode / decode
    private Blob base64UrlDecode(String base64string) {
        Integer padSize = 4 - Math.mod(base64string.length(), 4);
        for (Integer i=0; i < padSize; i++) {
            base64string = base64string + '=';
        }
        base64string = base64string.replace('_','/');
        base64string = base64string.replace('-','+');
        return EncodingUtil.base64Decode(base64string);
    }

    private String base64UrlEncode(Blob base64bytes) {
        String base64string = EncodingUtil.base64Encode(base64bytes);
        base64string = base64string.replace('/','_');
        base64string = base64string.replace('+','-');
        base64string = base64string.replace('=','');
        return base64string;
    }
    
    // encrypt / decrypt
    private String encrypt(String plaintext, String key) {
        Blob data = Blob.valueOf(plaintext);
        Blob keyBytes = base64UrlDecode(key);
        Blob encryptedData = Crypto.encryptWithManagedIV('AES256', keyBytes, data);
        String v1 = base64UrlEncode(encryptedData);
        String ciphertext = v1;
        return ciphertext;
    }

    private String decrypt(String ciphertext, String key) {
        Blob data = base64UrlDecode(ciphertext);
        Blob keyBytes = base64UrlDecode(key);
        Blob decryptedData = Crypto.decryptWithManagedIV('AES256', keyBytes, data);
        String plaintext = decryptedData.toString();
        return plaintext;
    }

    // Utilities
    private String currentTimestringIso8601() {
        return datetime.now().format('yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX', 'Asia/Tokyo');
    }

    private String randomUuid() {
        Blob b = Crypto.GenerateAESKey(128);
        String h = EncodingUtil.ConvertTohex(b);
        String guid = h.SubString(0,8)+ '-' + h.SubString(8,12) + '-' + h.SubString(12,16) + '-' + h.SubString(16,20) + '-' + h.substring(20);
        return guid;
    }
   
    public HTTPResponse call(String method, String path, String requestData){
        String encryptData = '{' +
            '"request_data": ' + requestData + ',' +
            '"timestamp": "' + currentTimestringIso8601() + '",' +
            '"partner_call_id": "' + randomUuid() + '"' +
            '}';
        String params = 'partner_client_id=' + clientId + '&' +
            'data=' + encrypt(encryptData, this.clientSecret) + '&' +
            'request_method=' + method;
        this.req.setMethod('POST');
        this.req.setEndpoint(this.baseUrl + path);
        System.debug('url: ' + this.req.getEndpoint());
        this.req.setBody(params);
        HTTPResponse res = this.client.send(req);
        String responseBody = res.getBody();
    
        JSONParser parser = JSON.createParser(res.getBody());
        while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                (parser.getText() == 'response_data')) {
                // Get the value.
                parser.nextToken();
                responseBody = decrypt(parser.getText(), clientSecret);
            }
        }
        System.debug('status_code: ' + res.getStatusCode());
        System.debug('response_body: ' + responseBody);
        return res;
    }

    public PokepayResponse send(PokepayRequest reqObj){
        String encryptData = '{' +
            '"request_data": ' + reqObj.getRequestBody() + ',' +
            '"timestamp": "' + currentTimestringIso8601() + '",' +
            '"partner_call_id": "' + randomUuid() + '"' +
            '}';
        String params = 'partner_client_id=' + clientId + '&' +
            'data=' + encrypt(encryptData, this.clientSecret) + '&' +
            'request_method=' + reqObj.method();
        this.req.setMethod(reqObj.method());
        this.req.setEndpoint(this.baseUrl + reqObj.path());
        System.debug('url: ' + this.req.getEndpoint());
        System.debug('reqObj.getRequestBody()' + reqObj.getRequestBody());
        this.req.setBody(params);
        HTTPResponse res = this.client.send(req);
        String responseBody = res.getBody();
    
        JSONParser parser = JSON.createParser(res.getBody());
        while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                (parser.getText() == 'response_data')) {
                // Get the value.
                parser.nextToken();
                responseBody = decrypt(parser.getText(), clientSecret);
            }
        }
        
        // System.debug('reqObj.getResponseClass():' + reqObj.getResponseClass());
        // System.debug('responseBody:' + responseBody);

        return new PokepayResponse(
            res.getStatusCode(),
            JSON.deserializeStrict(responseBody, reqObj.getResponseClass())
            );
    }
}
