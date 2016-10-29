package rx.exceptions;

/* compiled from: Twttr */
final class CompositeException$CompositeExceptionCausalChain extends RuntimeException {
    static String a = null;
    private static final long serialVersionUID = 3875212506787802066L;

    CompositeException$CompositeExceptionCausalChain() {
    }

    static {
        a = "Chain of Causes for CompositeException In Order Received =>";
    }

    public String getMessage() {
        return a;
    }
}
