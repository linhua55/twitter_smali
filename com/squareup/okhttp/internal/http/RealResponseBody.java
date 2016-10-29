package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import okio.j;

/* compiled from: Twttr */
public final class RealResponseBody extends ResponseBody {
    private final Headers headers;
    private final j source;

    public RealResponseBody(Headers headers, j jVar) {
        this.headers = headers;
        this.source = jVar;
    }

    public MediaType contentType() {
        String str = this.headers.get("Content-Type");
        return str != null ? MediaType.parse(str) : null;
    }

    public long contentLength() {
        return OkHeaders.contentLength(this.headers);
    }

    public j source() {
        return this.source;
    }
}
