package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
public interface Source extends Closeable {
    void close() throws IOException;

    Source deadline(Deadline deadline);

    long read(OkBuffer okBuffer, long j) throws IOException;
}
