@isTest
private class SendEchoTest {

    @isTest static void testOk() {
        SendEcho request = new SendEcho('message1');

        System.assertEquals(request.method(), 'POST', 'Test method');
        System.assertEquals(request.path(), '/echo', 'Test path');
        System.assertEquals(request.getRequestBody(), '{"message":"message1"}', 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), Echo.class, 'Test getRequestClass');
    }
}
