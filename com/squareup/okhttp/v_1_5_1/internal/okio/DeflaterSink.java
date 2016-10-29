package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.util.zip.Deflater;

/* compiled from: Twttr */
public final class DeflaterSink implements Sink {
    private boolean closed;
    private final Deflater deflater;
    private final BufferedSink sink;

    public DeflaterSink(Sink sink, Deflater deflater) {
        this.sink = Okio.buffer(sink);
        this.deflater = deflater;
    }

    public void write(OkBuffer okBuffer, long j) throws IOException {
        Util.checkOffsetAndCount(okBuffer.size, 0, j);
        while (j > 0) {
            Segment segment = okBuffer.head;
            int min = (int) Math.min(j, (long) (segment.limit - segment.pos));
            this.deflater.setInput(segment.data, segment.pos, min);
            deflate(false);
            okBuffer.size -= (long) min;
            segment.pos += min;
            if (segment.pos == segment.limit) {
                okBuffer.head = segment.pop();
                SegmentPool.INSTANCE.recycle(segment);
            }
            j -= (long) min;
        }
    }

    private void deflate(boolean z) throws IOException {
        OkBuffer buffer = this.sink.buffer();
        while (true) {
            Segment writableSegment = buffer.writableSegment(1);
            int deflate = z ? this.deflater.deflate(writableSegment.data, writableSegment.limit, 2048 - writableSegment.limit, 2) : this.deflater.deflate(writableSegment.data, writableSegment.limit, 2048 - writableSegment.limit);
            if (deflate > 0) {
                writableSegment.limit += deflate;
                buffer.size += (long) deflate;
                this.sink.emitCompleteSegments();
            } else if (this.deflater.needsInput()) {
                return;
            }
        }
    }

    public void flush() throws IOException {
        deflate(true);
        this.sink.flush();
    }

    public void close() throws IOException {
        Throwable th;
        if (!this.closed) {
            Throwable th2 = null;
            try {
                this.deflater.finish();
                deflate(false);
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.deflater.end();
                th3 = th2;
            } catch (Throwable th4) {
                th3 = th4;
                if (th2 != null) {
                    th3 = th2;
                }
            }
            try {
                this.sink.close();
            } catch (Throwable th22) {
                if (th3 == null) {
                    th3 = th22;
                }
            }
            this.closed = true;
            if (th3 != null) {
                Util.sneakyRethrow(th3);
            }
        }
    }

    public Sink deadline(Deadline deadline) {
        this.sink.deadline(deadline);
        return this;
    }

    public String toString() {
        return "DeflaterSink(" + this.sink + ")";
    }
}
