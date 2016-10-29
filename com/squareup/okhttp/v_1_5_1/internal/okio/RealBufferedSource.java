package com.squareup.okhttp.v_1_5_1.internal.okio;

import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
final class RealBufferedSource implements BufferedSource {
    public final OkBuffer buffer;
    private boolean closed;
    public final Source source;

    public RealBufferedSource(Source source, OkBuffer okBuffer) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.buffer = okBuffer;
        this.source = source;
    }

    public RealBufferedSource(Source source) {
        this(source, new OkBuffer());
    }

    public OkBuffer buffer() {
        return this.buffer;
    }

    public long read(OkBuffer okBuffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        checkNotClosed();
        if (this.buffer.size == 0 && this.source.read(this.buffer, 2048) == -1) {
            return -1;
        }
        return this.buffer.read(okBuffer, Math.min(j, this.buffer.size));
    }

    public boolean exhausted() throws IOException {
        checkNotClosed();
        return this.buffer.exhausted() && this.source.read(this.buffer, 2048) == -1;
    }

    public void require(long j) throws IOException {
        checkNotClosed();
        while (this.buffer.size < j) {
            if (this.source.read(this.buffer, 2048) == -1) {
                throw new EOFException();
            }
        }
    }

    public byte readByte() throws IOException {
        require(1);
        return this.buffer.readByte();
    }

    public ByteString readByteString(long j) throws IOException {
        require(j);
        return this.buffer.readByteString(j);
    }

    public String readUtf8(long j) throws IOException {
        require(j);
        return this.buffer.readUtf8(j);
    }

    public String readUtf8Line(boolean z) throws IOException {
        checkNotClosed();
        long j = 0;
        do {
            j = this.buffer.indexOf((byte) 10, j);
            if (j == -1) {
                j = this.buffer.size;
            } else if (j <= 0 || this.buffer.getByte(j - 1) != 13) {
                r0 = readUtf8(j);
                skip(1);
                return r0;
            } else {
                r0 = readUtf8(j - 1);
                skip(2);
                return r0;
            }
        } while (this.source.read(this.buffer, 2048) != -1);
        if (z) {
            throw new EOFException();
        } else if (this.buffer.size != 0) {
            return readUtf8(this.buffer.size);
        } else {
            return null;
        }
    }

    public short readShort() throws IOException {
        require(2);
        return this.buffer.readShort();
    }

    public int readShortLe() throws IOException {
        require(2);
        return this.buffer.readShortLe();
    }

    public int readInt() throws IOException {
        require(4);
        return this.buffer.readInt();
    }

    public int readIntLe() throws IOException {
        require(4);
        return this.buffer.readIntLe();
    }

    public void skip(long j) throws IOException {
        checkNotClosed();
        while (j > 0) {
            if (this.buffer.size == 0 && this.source.read(this.buffer, 2048) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.buffer.size());
            this.buffer.skip(min);
            j -= min;
        }
    }

    public long seek(byte b) throws IOException {
        checkNotClosed();
        long j = 0;
        do {
            j = this.buffer.indexOf(b, j);
            if (j != -1) {
                return j;
            }
            j = this.buffer.size;
        } while (this.source.read(this.buffer, 2048) != -1);
        throw new EOFException();
    }

    public InputStream inputStream() {
        return new InputStream() {
            public int read() throws IOException {
                checkNotClosed();
                if (RealBufferedSource.this.buffer.size == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.buffer, 2048) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.readByte() & NalUnitUtil.EXTENDED_SAR;
            }

            public int read(byte[] bArr, int i, int i2) throws IOException {
                checkNotClosed();
                Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
                if (RealBufferedSource.this.buffer.size == 0 && RealBufferedSource.this.source.read(RealBufferedSource.this.buffer, 2048) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.read(bArr, i, i2);
            }

            public int available() throws IOException {
                checkNotClosed();
                return (int) Math.min(RealBufferedSource.this.buffer.size, 2147483647L);
            }

            public void close() throws IOException {
                RealBufferedSource.this.close();
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            private void checkNotClosed() throws IOException {
                if (RealBufferedSource.this.closed) {
                    throw new IOException("closed");
                }
            }
        };
    }

    public Source deadline(Deadline deadline) {
        this.source.deadline(deadline);
        return this;
    }

    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            this.source.close();
            this.buffer.clear();
        }
    }

    public String toString() {
        return "buffer(" + this.source + ")";
    }

    private void checkNotClosed() {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
    }
}
