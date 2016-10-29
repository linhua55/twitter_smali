package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: Twttr */
final class RetryableSink implements Sink {
    private boolean closed;
    private final OkBuffer content;
    private final int limit;

    public RetryableSink(int i) {
        this.content = new OkBuffer();
        this.limit = i;
    }

    public RetryableSink() {
        this(-1);
    }

    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            if (this.content.size() < ((long) this.limit)) {
                throw new ProtocolException("content-length promised " + this.limit + " bytes, but received " + this.content.size());
            }
        }
    }

    public void write(OkBuffer okBuffer, long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        Util.checkOffsetAndCount(okBuffer.size(), 0, j);
        if (this.limit == -1 || this.content.size() <= ((long) this.limit) - j) {
            this.content.write(okBuffer, j);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.limit + " bytes");
    }

    public void flush() throws IOException {
    }

    public Sink deadline(Deadline deadline) {
        return this;
    }

    public long contentLength() throws IOException {
        return this.content.size();
    }

    public void writeToSocket(BufferedSink bufferedSink) throws IOException {
        bufferedSink.write(this.content.clone(), this.content.size());
    }
}
