package com.crashlytics.android.core;

import defpackage.ap;
import java.io.IOException;

/* compiled from: Twttr */
final class bn extends bq {
    private final long a;
    private final String b;
    private final String c;
    private final long d;
    private final int e;

    public bn(ap apVar) {
        super(3, new bq[0]);
        this.a = apVar.a;
        this.b = apVar.b;
        this.c = apVar.c;
        this.d = apVar.d;
        this.e = apVar.e;
    }

    public int a() {
        return (((CodedOutputStream.b(1, this.a) + CodedOutputStream.b(2, b.a(this.b))) + CodedOutputStream.b(3, b.a(this.c))) + CodedOutputStream.b(4, this.d)) + CodedOutputStream.d(5, this.e);
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, this.a);
        codedOutputStream.a(2, b.a(this.b));
        codedOutputStream.a(3, b.a(this.c));
        codedOutputStream.a(4, this.d);
        codedOutputStream.a(5, this.e);
    }
}
