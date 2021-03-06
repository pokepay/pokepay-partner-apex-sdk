// DO NOT EDIT: File is generated by code generator.

@isTest
private class ListCampaignsTest {
    @isTest static void test0() {
        ListCampaigns request = new ListCampaigns(
            'dba51e16-cd36-4a55-a5ca-a2914f29dd05'
        );
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/campaigns', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"private_money_id":"dba51e16-cd36-4a55-a5ca-a2914f29dd05"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedCampaigns.class, 'Test getRequestClass');
    }
    @isTest static void test1() {
        ListCampaigns request = new ListCampaigns(
            'dba51e16-cd36-4a55-a5ca-a2914f29dd05'
        )
                .perPage(6292);
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/campaigns', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"private_money_id":"dba51e16-cd36-4a55-a5ca-a2914f29dd05","per_page":6292}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedCampaigns.class, 'Test getRequestClass');
    }
    @isTest static void test2() {
        ListCampaigns request = new ListCampaigns(
            'dba51e16-cd36-4a55-a5ca-a2914f29dd05'
        )
                .page(7558)
                .perPage(3860);
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/campaigns', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"private_money_id":"dba51e16-cd36-4a55-a5ca-a2914f29dd05","page":7558,"per_page":3860}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedCampaigns.class, 'Test getRequestClass');
    }
    @isTest static void test3() {
        ListCampaigns request = new ListCampaigns(
            'dba51e16-cd36-4a55-a5ca-a2914f29dd05'
        )
                .setOngoing(false)
                .page(1877)
                .perPage(5075);
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/campaigns', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"private_money_id":"dba51e16-cd36-4a55-a5ca-a2914f29dd05","is_ongoing":false,"page":1877,"per_page":5075}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedCampaigns.class, 'Test getRequestClass');
    }
}
