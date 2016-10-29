package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.http.Request;
import com.squareup.okhttp.v_1_5_1.internal.http.Response;
import java.io.IOException;
import java.net.CacheRequest;

/* compiled from: Twttr */
public interface OkResponseCache {
    Response get(Request request) throws IOException;

    boolean maybeRemove(Request request) throws IOException;

    CacheRequest put(Response response) throws IOException;

    void trackConditionalCacheHit();

    void trackResponse(ResponseSource responseSource);

    void update(Response response, Response response2) throws IOException;
}
