// DO NOT EDIT: File is generated by code generator.

public with sharing class ListTransactions extends PokepayRequest {
    private String start_from;
    private String to;
    private Integer page;
    private Integer per_page;
    private String shop_id;
    private String customer_id;
    private String customer_name;
    private String terminal_id;
    private String transaction_id;
    private String organization_code;
    private String private_money_id;
    private Boolean is_modified;
    private String[] types;
    private String description;

    public ListTransactions() {
    }

    public ListTransactions startFrom(String startFrom) {
        this.start_from = startFrom;
        return this;
    }

    public ListTransactions to(String to) {
        this.to = to;
        return this;
    }

    public ListTransactions page(Integer page) {
        this.page = page;
        return this;
    }

    public ListTransactions perPage(Integer perPage) {
        this.per_page = perPage;
        return this;
    }

    public ListTransactions shopId(String shopId) {
        this.shop_id = shopId;
        return this;
    }

    public ListTransactions customerId(String customerId) {
        this.customer_id = customerId;
        return this;
    }

    public ListTransactions customerName(String customerName) {
        this.customer_name = customerName;
        return this;
    }

    public ListTransactions terminalId(String terminalId) {
        this.terminal_id = terminalId;
        return this;
    }

    public ListTransactions transactionId(String transactionId) {
        this.transaction_id = transactionId;
        return this;
    }

    public ListTransactions organizationCode(String organizationCode) {
        this.organization_code = organizationCode;
        return this;
    }

    public ListTransactions privateMoneyId(String privateMoneyId) {
        this.private_money_id = privateMoneyId;
        return this;
    }

    public ListTransactions setModified(Boolean modified) {
        this.is_modified = modified;
        return this;
    }

    public ListTransactions types(String[] types) {
        this.types = types;
        return this;
    }

    public ListTransactions description(String description) {
        this.description = description;
        return this;
    }

    public override String method() {
        return 'GET';
    }

    public override String path() {
        return '/transactions';
    }

    public override Type getResponseClass() {
        return PaginatedTransaction.class;
    }

    public override String getRequestBody() {
        return JSON.serialize(this, true);
    }
}
