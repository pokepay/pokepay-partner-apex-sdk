// DO NOT EDIT: File is generated by code generator.

public with sharing class ListTransfers extends PokepayRequest {
    private String start_from;
    private String to;
    private Integer page;
    private Integer per_page;
    private String shop_id;
    private String shop_name;
    private String customer_id;
    private String customer_name;
    private String transaction_id;
    private String private_money_id;
    private Boolean is_modified;
    private String[] transaction_types;
    private String[] transfer_types;
    private String description;

    public ListTransfers() {
    }

    public ListTransfers startFrom(String startFrom) {
        this.start_from = startFrom;
        return this;
    }

    public ListTransfers to(String to) {
        this.to = to;
        return this;
    }

    public ListTransfers page(Integer page) {
        this.page = page;
        return this;
    }

    public ListTransfers perPage(Integer perPage) {
        this.per_page = perPage;
        return this;
    }

    public ListTransfers shopId(String shopId) {
        this.shop_id = shopId;
        return this;
    }

    public ListTransfers shopName(String shopName) {
        this.shop_name = shopName;
        return this;
    }

    public ListTransfers customerId(String customerId) {
        this.customer_id = customerId;
        return this;
    }

    public ListTransfers customerName(String customerName) {
        this.customer_name = customerName;
        return this;
    }

    public ListTransfers transactionId(String transactionId) {
        this.transaction_id = transactionId;
        return this;
    }

    public ListTransfers privateMoneyId(String privateMoneyId) {
        this.private_money_id = privateMoneyId;
        return this;
    }

    public ListTransfers setModified(Boolean modified) {
        this.is_modified = modified;
        return this;
    }

    public ListTransfers transactionTypes(String[] transactionTypes) {
        this.transaction_types = transactionTypes;
        return this;
    }

    public ListTransfers transferTypes(String[] transferTypes) {
        this.transfer_types = transferTypes;
        return this;
    }

    public ListTransfers description(String description) {
        this.description = description;
        return this;
    }

    public override String method() {
        return 'GET';
    }

    public override String path() {
        return '/transfers';
    }

    public override Type getResponseClass() {
        return PaginatedTransfers.class;
    }

    public override String getRequestBody() {
        return JSON.serialize(this, true);
    }
}
