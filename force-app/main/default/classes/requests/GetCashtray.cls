// DO NOT EDIT: File is generated by code generator.

public with sharing class GetCashtray extends PokepayRequest {
    private String cashtray_id;

    public GetCashtray(String cashtrayId) {
        this.cashtray_id = cashtrayId;
    }

    public override String method() {
        return 'GET';
    }

    public override String path() {
        return '/cashtrays' + '/' + this.cashtray_id;
    }

    public override Type getResponseClass() {
        return CashtrayWithResult.class;
    }

    public override String getRequestBody() {
        Map<String, Object> requestMap = new Map<String, Object>();
        return JSON.serialize(requestMap, true);
    }
}
