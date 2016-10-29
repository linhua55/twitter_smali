package com.crashlytics.android.core;

import java.io.IOException;

/* compiled from: Twttr */
final class bk extends bq {
    private final float a;
    private final int b;
    private final boolean c;
    private final int d;
    private final long e;
    private final long f;

    public bk(float f, int i, boolean z, int i2, long j, long j2) {
        super(5, new bq[0]);
        this.a = f;
        this.b = i;
        this.c = z;
        this.d = i2;
        this.e = j;
        this.f = j2;
    }

    public int a() {
        return (((((0 + CodedOutputStream.b(1, this.a)) + CodedOutputStream.f(2, this.b)) + CodedOutputStream.b(3, this.c)) + CodedOutputStream.d(4, this.d)) + CodedOutputStream.b(5, this.e)) + CodedOutputStream.b(6, this.f);
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, this.a);
        codedOutputStream.c(2, this.b);
        codedOutputStream.a(3, this.c);
        codedOutputStream.a(4, this.d);
        codedOutputStream.a(5, this.e);
        codedOutputStream.a(6, this.f);
    }
}
