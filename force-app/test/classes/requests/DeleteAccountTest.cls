// DO NOT EDIT: File is generated by code generator.

@isTest
private class DeleteAccountTest {
    @isTest static void test0() {
        DeleteAccount request = new DeleteAccount(
            '6a582ffc-6826-460e-af49-493aff67e35d'
        );
        
        System.assertEquals(request.method(), 'DELETE', 'Test method');
        System.assertEquals(request.path(), '/accounts/6a582ffc-6826-460e-af49-493aff67e35d', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"account_id":"6a582ffc-6826-460e-af49-493aff67e35d"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), AccountDeleted.class, 'Test getRequestClass');
    }
    @isTest static void test1() {
        DeleteAccount request = new DeleteAccount(
            '6a582ffc-6826-460e-af49-493aff67e35d'
        )
                .cashback(true);
        
        System.assertEquals(request.method(), 'DELETE', 'Test method');
        System.assertEquals(request.path(), '/accounts/6a582ffc-6826-460e-af49-493aff67e35d', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"account_id":"6a582ffc-6826-460e-af49-493aff67e35d","cashback":true}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), AccountDeleted.class, 'Test getRequestClass');
    }
}
