// DO NOT EDIT: File is generated by code generator.

public with sharing class CashtrayAttempt extends PokepayResponseBody {
    private AccountWithUser account;
    private Decimal status_code;
    private String error_type;
    private String error_message;
    private String created_at;

    public AccountWithUser getAccount() {
        return this.account;
    }

    public Decimal getStatusCode() {
        return this.status_code;
    }

    public String getErrorType() {
        return this.error_type;
    }

    public String getErrorMessage() {
        return this.error_message;
    }

    public String getCreatedAt() {
        return this.created_at;
    }
}

