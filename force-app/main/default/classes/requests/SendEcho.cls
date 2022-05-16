public with sharing class SendEcho extends PokepayRequest {
    private String message;

    public SendEcho(String message) {
        this.message = message;
    }

    public override String method() {
        return 'POST';
    }

    public override String path() {
        return '/echo';
    }

    public override Type getResponseClass() {
        return Echo.class;
    }

    public override String getRequestBody() {
        return JSON.serialize(this);
    }
}
