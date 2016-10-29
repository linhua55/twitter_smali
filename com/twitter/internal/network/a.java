package com.twitter.internal.network;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public class a extends FilterOutputStream {
    private final p a;
    private final long b;
    private final long c;
    private long d;
    private long e;

    public a(OutputStream outputStream, long j, p pVar) {
        super(outputStream);
        this.a = pVar;
        this.b = 2 * j;
        this.d = 0;
        this.c = this.b / 5;
        this.e = this.c;
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.d += (long) i2;
        if (this.d >= this.e) {
            super.flush();
            if (this.a != null) {
                this.a.a(this.d, this.b);
            }
            this.e += this.c;
        }
    }

    public void write(int i) throws IOException {
        super.write(i);
        this.d++;
        if (this.d >= this.e) {
            super.flush();
            if (this.a != null) {
                this.a.a(this.d, this.b);
            }
            this.e += this.c;
        }
    }
}
