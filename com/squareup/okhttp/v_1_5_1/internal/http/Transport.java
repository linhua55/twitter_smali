package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.internal.http.Response.Builder;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.IOException;
import java.net.CacheRequest;

/* compiled from: Twttr */
interface Transport {
    public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;

    boolean canReuseConnection();

    Sink createRequestBody(Request request) throws IOException;

    void emptyTransferStream() throws IOException;

    void flushRequest() throws IOException;

    Source getTransferStream(CacheRequest cacheRequest) throws IOException;

    Builder readResponseHeaders() throws IOException;

    void releaseConnectionOnIdle() throws IOException;

    void writeRequestBody(RetryableSink retryableSink) throws IOException;

    void writeRequestHeaders(Request request) throws IOException;
}
