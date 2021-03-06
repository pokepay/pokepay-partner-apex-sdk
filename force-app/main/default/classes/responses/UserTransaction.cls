// DO NOT EDIT: File is generated by code generator.

public with sharing class UserTransaction extends PokepayResponseBody {
    private String id;
    private User user;
    private Decimal balance;
    private Decimal amount;
    private Decimal money_amount;
    private Decimal point_amount;
    private Account account;
    private String description;
    private String done_at;
    private String type;
    private Boolean is_modified;

    public String getId() {
        return this.id;
    }

    public User getUser() {
        return this.user;
    }

    public Decimal getBalance() {
        return this.balance;
    }

    public Decimal getAmount() {
        return this.amount;
    }

    public Decimal getMoneyAmount() {
        return this.money_amount;
    }

    public Decimal getPointAmount() {
        return this.point_amount;
    }

    public Account getAccount() {
        return this.account;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDoneAt() {
        return this.done_at;
    }

    public String getType() {
        return this.type;
    }

    public Boolean isModified() {
        return this.is_modified;
    }
}

