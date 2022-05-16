public with sharing class PokepayResponse {
    private Integer statusCode;
    private Object responseBody;

    public PokepayResponse(Integer statusCode, Object responseBody){
        this.statusCode = statusCode;
        this.responseBody = responseBody;
    }

    public Integer getStatusCode() {
        return statusCode;
    }

    public Object getResponseBody() {
        return responseBody;
    }
}
