package com.squareup.okhttp.internal.ws;

import com.google.android.exoplayer.ExoPlayer.Factory;
import java.io.IOException;
import java.util.Random;
import okio.aa;
import okio.ac;
import okio.f;
import okio.i;
import okio.j;

/* compiled from: Twttr */
public final class WebSocketWriter {
    static final /* synthetic */ boolean $assertionsDisabled;
    private boolean activeWriter;
    private final f buffer;
    private final FrameSink frameSink;
    private final boolean isClient;
    private final byte[] maskBuffer;
    private final byte[] maskKey;
    private final Random random;
    private final i sink;
    private boolean writerClosed;

    /* compiled from: Twttr */
    final class FrameSink implements aa {
        private boolean closed;
        private int formatOpcode;
        private boolean isFirstFrame;

        private FrameSink() {
        }

        public void write(f fVar, long j) throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            WebSocketWriter.this.buffer.write(fVar, j);
            long h = WebSocketWriter.this.buffer.h();
            if (h > 0) {
                synchronized (WebSocketWriter.this) {
                    WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, h, this.isFirstFrame, false);
                }
                this.isFirstFrame = false;
            }
        }

        public void flush() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            synchronized (WebSocketWriter.this) {
                WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, WebSocketWriter.this.buffer.a(), this.isFirstFrame, false);
            }
            this.isFirstFrame = false;
        }

        public ac timeout() {
            return WebSocketWriter.this.sink.timeout();
        }

        public void close() throws IOException {
            if (this.closed) {
                throw new IOException("closed");
            }
            synchronized (WebSocketWriter.this) {
                WebSocketWriter.this.writeMessageFrameSynchronized(this.formatOpcode, WebSocketWriter.this.buffer.a(), this.isFirstFrame, true);
            }
            this.closed = true;
            WebSocketWriter.this.activeWriter = false;
        }
    }

    static {
        $assertionsDisabled = !WebSocketWriter.class.desiredAssertionStatus();
    }

    public WebSocketWriter(boolean z, i iVar, Random random) {
        byte[] bArr = null;
        this.buffer = new f();
        this.frameSink = new FrameSink();
        if (iVar == null) {
            throw new NullPointerException("sink == null");
        } else if (random == null) {
            throw new NullPointerException("random == null");
        } else {
            byte[] bArr2;
            this.isClient = z;
            this.sink = iVar;
            this.random = random;
            if (z) {
                bArr2 = new byte[4];
            } else {
                bArr2 = null;
            }
            this.maskKey = bArr2;
            if (z) {
                bArr = new byte[2048];
            }
            this.maskBuffer = bArr;
        }
    }

    public void writePing(f fVar) throws IOException {
        synchronized (this) {
            writeControlFrameSynchronized(9, fVar);
        }
    }

    public void writePong(f fVar) throws IOException {
        synchronized (this) {
            writeControlFrameSynchronized(10, fVar);
        }
    }

    public void writeClose(int i, String str) throws IOException {
        f fVar = null;
        if (!(i == 0 && str == null)) {
            if (i == 0 || (i >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE && i < Factory.DEFAULT_MIN_REBUFFER_MS)) {
                fVar = new f();
                fVar.c(i);
                if (str != null) {
                    fVar.a(str);
                }
            } else {
                throw new IllegalArgumentException("Code must be in range [1000,5000).");
            }
        }
        synchronized (this) {
            writeControlFrameSynchronized(8, fVar);
            this.writerClosed = true;
        }
    }

    private void writeControlFrameSynchronized(int i, f fVar) throws IOException {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (this.writerClosed) {
            throw new IOException("closed");
        } else {
            int i2 = 0;
            if (fVar != null) {
                i2 = (int) fVar.a();
                if (((long) i2) > 125) {
                    throw new IllegalArgumentException("Payload size must be less than or equal to 125");
                }
            }
            this.sink.i(i | 128);
            if (this.isClient) {
                this.sink.i(i2 | 128);
                this.random.nextBytes(this.maskKey);
                this.sink.c(this.maskKey);
                if (fVar != null) {
                    writeMaskedSynchronized(fVar, (long) i2);
                }
            } else {
                this.sink.i(i2);
                if (fVar != null) {
                    this.sink.a(fVar);
                }
            }
            this.sink.e();
        }
    }

    public aa newMessageSink(int i) {
        if (this.activeWriter) {
            throw new IllegalStateException("Another message writer is active. Did you call close()?");
        }
        this.activeWriter = true;
        this.frameSink.formatOpcode = i;
        this.frameSink.isFirstFrame = true;
        this.frameSink.closed = false;
        return this.frameSink;
    }

    private void writeMessageFrameSynchronized(int i, long j, boolean z, boolean z2) throws IOException {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (this.writerClosed) {
            throw new IOException("closed");
        } else {
            int i2 = z ? i : 0;
            if (z2) {
                i2 |= 128;
            }
            this.sink.i(i2);
            if (this.isClient) {
                i2 = 128;
                this.random.nextBytes(this.maskKey);
            } else {
                i2 = 0;
            }
            if (j <= 125) {
                this.sink.i(i2 | ((int) j));
            } else if (j <= 65535) {
                this.sink.i(i2 | 126);
                this.sink.h((int) j);
            } else {
                this.sink.i(i2 | 127);
                this.sink.m(j);
            }
            if (this.isClient) {
                this.sink.c(this.maskKey);
                writeMaskedSynchronized(this.buffer, j);
            } else {
                this.sink.write(this.buffer, j);
            }
            this.sink.e();
        }
    }

    private void writeMaskedSynchronized(j jVar, long j) throws IOException {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            long j2 = 0;
            while (j2 < j) {
                int a = jVar.a(this.maskBuffer, 0, (int) Math.min(j, (long) this.maskBuffer.length));
                if (a == -1) {
                    throw new AssertionError();
                }
                WebSocketProtocol.toggleMask(this.maskBuffer, (long) a, this.maskKey, j2);
                this.sink.c(this.maskBuffer, 0, a);
                j2 += (long) a;
            }
            return;
        }
        throw new AssertionError();
    }
}
