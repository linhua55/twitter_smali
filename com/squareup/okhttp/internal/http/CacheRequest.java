package com.squareup.okhttp.internal.http;

import java.io.IOException;
import okio.aa;

/* compiled from: Twttr */
public interface CacheRequest {
    void abort();

    aa body() throws IOException;
}
