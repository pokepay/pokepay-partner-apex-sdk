// DO NOT EDIT: File is generated by code generator.

public with sharing class UpdateCustomerAccount extends PokepayRequest {
    private String status;
    private String account_name;
    private String external_id;
    private String account_id;

    public UpdateCustomerAccount(String accountId) {
        this.account_id = accountId;
    }

    public UpdateCustomerAccount status(String status) {
        this.status = status;
        return this;
    }

    public UpdateCustomerAccount accountName(String accountName) {
        this.account_name = accountName;
        return this;
    }

    public UpdateCustomerAccount externalId(String externalId) {
        this.external_id = externalId;
        return this;
    }

    public override String method() {
        return 'PATCH';
    }

    public override String path() {
        return '/accounts' + '/' + this.account_id + '/customers';
    }

    public override Type getResponseClass() {
        return AccountWithUser.class;
    }

    public override String getRequestBody() {
        Map<String, Object> requestMap = new Map<String, Object>();
        if(this.status != null){
            requestMap.put('status', this.status);
        }
        if(this.account_name != null){
            requestMap.put('account_name', this.account_name);
        }
        if(this.external_id != null){
            requestMap.put('external_id', this.external_id);
        }
        return JSON.serialize(requestMap, true);
    }
}
