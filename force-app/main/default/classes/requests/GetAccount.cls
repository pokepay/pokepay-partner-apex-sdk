// DO NOT EDIT: File is generated by code generator.

public with sharing class GetAccount extends PokepayRequest {
    private String account_id;

    public GetAccount(String accountId) {
        this.account_id = accountId;
    }

    public override String method() {
        return 'GET';
    }

    public override String path() {
        return '/accounts' + '/' + this.account_id;
    }

    public override Type getResponseClass() {
        return AccountDetail.class;
    }

    public override String getRequestBody() {
        Map<String, Object> requestMap = new Map<String, Object>();
        return JSON.serialize(requestMap, true);
    }
}
