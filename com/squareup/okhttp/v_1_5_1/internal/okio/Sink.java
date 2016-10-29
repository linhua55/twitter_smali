package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
public interface Sink extends Closeable {
    void close() throws IOException;

    Sink deadline(Deadline deadline);

    void flush() throws IOException;

    void write(OkBuffer okBuffer, long j) throws IOException;
}
