package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
final class RealBufferedSink implements BufferedSink {
    public final OkBuffer buffer;
    private AtomicBoolean closed;
    public final Sink sink;

    public RealBufferedSink(Sink sink, OkBuffer okBuffer) {
        this.closed = new AtomicBoolean();
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.buffer = okBuffer;
        this.sink = sink;
    }

    public RealBufferedSink(Sink sink) {
        this(sink, new OkBuffer());
    }

    public OkBuffer buffer() {
        return this.buffer;
    }

    public void write(OkBuffer okBuffer, long j) throws IOException {
        checkNotClosed();
        this.buffer.write(okBuffer, j);
        emitCompleteSegments();
    }

    public BufferedSink write(ByteString byteString) throws IOException {
        checkNotClosed();
        this.buffer.write(byteString);
        return emitCompleteSegments();
    }

    public BufferedSink writeUtf8(String str) throws IOException {
        checkNotClosed();
        this.buffer.writeUtf8(str);
        return emitCompleteSegments();
    }

    public BufferedSink write(byte[] bArr) throws IOException {
        checkNotClosed();
        this.buffer.write(bArr);
        return emitCompleteSegments();
    }

    public BufferedSink write(byte[] bArr, int i, int i2) throws IOException {
        checkNotClosed();
        this.buffer.write(bArr, i, i2);
        return emitCompleteSegments();
    }

    public BufferedSink writeByte(int i) throws IOException {
        checkNotClosed();
        this.buffer.writeByte(i);
        return emitCompleteSegments();
    }

    public BufferedSink writeShort(int i) throws IOException {
        checkNotClosed();
        this.buffer.writeShort(i);
        return emitCompleteSegments();
    }

    public BufferedSink writeInt(int i) throws IOException {
        checkNotClosed();
        this.buffer.writeInt(i);
        return emitCompleteSegments();
    }

    public BufferedSink emitCompleteSegments() throws IOException {
        checkNotClosed();
        long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
        if (completeSegmentByteCount > 0) {
            this.sink.write(this.buffer, completeSegmentByteCount);
        }
        return this;
    }

    public OutputStream outputStream() {
        return new OutputStream() {
            public void write(int i) throws IOException {
                checkNotClosed();
                RealBufferedSink.this.buffer.writeByte((byte) i);
                RealBufferedSink.this.emitCompleteSegments();
            }

            public void write(byte[] bArr, int i, int i2) throws IOException {
                checkNotClosed();
                RealBufferedSink.this.buffer.write(bArr, i, i2);
                RealBufferedSink.this.emitCompleteSegments();
            }

            public void flush() throws IOException {
                if (!RealBufferedSink.this.closed.get()) {
                    RealBufferedSink.this.flush();
                }
            }

            public void close() throws IOException {
                RealBufferedSink.this.close();
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            private void checkNotClosed() throws IOException {
                if (RealBufferedSink.this.closed.get()) {
                    throw new IOException("closed");
                }
            }
        };
    }

    public void flush() throws IOException {
        checkNotClosed();
        if (this.buffer.size > 0) {
            this.sink.write(this.buffer, this.buffer.size);
        }
        this.sink.flush();
    }

    public void close() throws IOException {
        if (!this.closed.getAndSet(true)) {
            Throwable th;
            Throwable th2 = null;
            try {
                if (this.buffer.size > 0) {
                    this.sink.write(this.buffer, this.buffer.size);
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.sink.close();
                th3 = th2;
            } catch (Throwable th4) {
                th3 = th4;
                if (th2 != null) {
                    th3 = th2;
                }
            }
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
        return "buffer(" + this.sink + ")";
    }

    private void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("closed");
        }
    }
}
