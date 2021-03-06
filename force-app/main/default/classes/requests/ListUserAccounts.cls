// DO NOT EDIT: File is generated by code generator.

public with sharing class ListUserAccounts extends PokepayRequest {
    private Integer page;
    private Integer per_page;
    private String user_id;

    public ListUserAccounts(String userId) {
        this.user_id = userId;
    }

    public ListUserAccounts page(Integer page) {
        this.page = page;
        return this;
    }

    public ListUserAccounts perPage(Integer perPage) {
        this.per_page = perPage;
        return this;
    }

    public override String method() {
        return 'GET';
    }

    public override String path() {
        return '/users' + '/' + this.user_id + '/accounts';
    }

    public override Type getResponseClass() {
        return PaginatedAccountDetails.class;
    }

    public override String getRequestBody() {
        Map<String, Object> requestMap = new Map<String, Object>();
        if(this.page != null){
            requestMap.put('page', this.page);
        }
        if(this.per_page != null){
            requestMap.put('per_page', this.per_page);
        }
        return JSON.serialize(requestMap, true);
    }
}
