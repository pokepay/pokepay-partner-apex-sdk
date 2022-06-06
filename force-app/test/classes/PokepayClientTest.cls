@isTest
private class PokepayClientTest {

    @isTest static void testOk() {
        Test.setMock(HttpCalloutMock.class, new SendEchoResponseGenerator());

        PokepayClient client = new PokepayClient(
            '64bd2500-7324-4bfb-a34f-3ded0b4c1ea5',
            'JTFiwjdHFM6TP9TCTvpweDyFbpgYAun9Z2McSXyFSro',
            'https://partnerapi-dev.pokepay.jp',
            'dev_sf_01'
            );

        SendEcho request = new SendEcho('message1');
        PokepayResponse response = client.send(request);
        System.assertEquals(200,response.getStatusCode(),'Check status code');
        Echo responseBody = (Echo)response.getResponseBody();
        System.assertEquals('ok',responseBody.getStatus(),'Check response body status');
        System.assertEquals('message1',responseBody.getMessage(),'Check response body message');
    }
}
