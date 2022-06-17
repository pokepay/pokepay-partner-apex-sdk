@isTest
private class EchoTest {

    @isTest static void testOk() {
        String responseBody = '{"message":"message1"}';
        Echo responseObject = (Echo)JSON.deserializeStrict(responseBody, Echo.class);
    
        System.assertEquals(responseObject.getMessage(), 'message1', 'Test get a property');
    }
}