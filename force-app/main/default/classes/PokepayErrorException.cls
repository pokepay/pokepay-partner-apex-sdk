public class PokepayErrorException extends Exception {
    private Integer statusCode;
    private String type;
    private String message;
    private Object errors;

    public PokepayErrorException(Integer statusCode, String type, String message, Object errors) {
        this.statusCode = statusCode;
        this.type = type;
        this.message = message;
        this.errors = errors;
    }
    
    public Integer getStatusCode() {
        return statusCode;
    }
}
