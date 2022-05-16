@isTest
public class SendEchoResponseGenerator implements HttpCalloutMock {
    // Implement this interface method
    public HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('https://partnerapi-dev.pokepay.jp/echo', req.getEndpoint());
        System.assertEquals('POST', req.getMethod());
        
        System.debug('req: ' + req);
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"message":"message1", "status":"ok"}');
        res.setStatusCode(200);
        return res;
    }
}
