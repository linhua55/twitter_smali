package com.twitter.library.util;

import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: Twttr */
class x extends af {
    private final long a;
    private final long b;
    private long c;
    private RandomAccessFile d;

    private x(RandomAccessFile randomAccessFile, long j, long j2) throws IOException {
        this.d = randomAccessFile;
        this.a = j;
        this.c = j;
        this.b = j + j2;
        this.d.seek(this.c);
    }

    private void b() throws IOException {
        if (this.d == null) {
            throw new IOException("File closed");
        }
    }

    private boolean c() {
        return this.c >= this.b;
    }

    public void a() throws IOException {
        b();
        if (this.c != this.a) {
            this.c = this.a;
            this.d.seek(this.c);
        }
    }

    public int available() {
        if (c()) {
            return 0;
        }
        return (int) (this.b - this.c);
    }

    public void close() {
        this.d = null;
    }

    public int read() throws IOException {
        b();
        if (c()) {
            return -1;
        }
        this.c++;
        return this.d.read() & NalUnitUtil.EXTENDED_SAR;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        b();
        if (c()) {
            return -1;
        }
        int read = this.d.read(bArr, i, Math.min(i2, available()));
        if (read <= 0) {
            return read;
        }
        this.c += (long) read;
        return read;
    }
}
