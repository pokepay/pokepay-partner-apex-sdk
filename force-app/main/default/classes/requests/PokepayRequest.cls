public abstract with sharing class PokepayRequest {
    public abstract String method();
    public abstract String path();
    public abstract Type getResponseClass();
    public abstract String getRequestBody();
}
