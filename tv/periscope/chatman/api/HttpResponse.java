package tv.periscope.chatman.api;

/* compiled from: Twttr */
public class HttpResponse<S, E> {
    public final E errorResponse;
    public final S successResponse;

    public HttpResponse(S s, E e) {
        this.successResponse = s;
        this.errorResponse = e;
    }
}
