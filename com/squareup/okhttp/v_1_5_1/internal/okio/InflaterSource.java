package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.Inflater;

/* compiled from: Twttr */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }

    InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.source = bufferedSource;
            this.inflater = inflater;
        }
    }

    public long read(OkBuffer okBuffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.closed) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0;
        } else {
            boolean refill;
            do {
                refill = refill();
                try {
                    Segment writableSegment = okBuffer.writableSegment(1);
                    int inflate = this.inflater.inflate(writableSegment.data, writableSegment.limit, 2048 - writableSegment.limit);
                    if (inflate > 0) {
                        writableSegment.limit += inflate;
                        okBuffer.size += (long) inflate;
                        return (long) inflate;
                    } else if (this.inflater.finished() || this.inflater.needsDictionary()) {
                        releaseInflatedBytes();
                        return -1;
                    }
                } catch (Throwable e) {
                    IOException iOException = new IOException();
                    iOException.initCause(e);
                    throw iOException;
                }
            } while (!refill);
            throw new EOFException("source exhausted prematurely");
        }
    }

    public boolean refill() throws IOException {
        if (!this.inflater.needsInput()) {
            return false;
        }
        releaseInflatedBytes();
        if (this.inflater.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.source.exhausted()) {
            return true;
        } else {
            Segment segment = this.source.buffer().head;
            this.bufferBytesHeldByInflater = segment.limit - segment.pos;
            this.inflater.setInput(segment.data, segment.pos, this.bufferBytesHeldByInflater);
            return false;
        }
    }

    private void releaseInflatedBytes() throws IOException {
        if (this.bufferBytesHeldByInflater != 0) {
            int remaining = this.bufferBytesHeldByInflater - this.inflater.getRemaining();
            this.bufferBytesHeldByInflater -= remaining;
            this.source.skip((long) remaining);
        }
    }

    public Source deadline(Deadline deadline) {
        this.source.deadline(deadline);
        return this;
    }

    public void close() throws IOException {
        if (!this.closed) {
            this.inflater.end();
            this.closed = true;
            this.source.close();
        }
    }
}
