package com.crashlytics.android.core;

import aj;
import java.io.IOException;

/* compiled from: Twttr */
final class bi extends bq {
    private final long a;
    private final long b;
    private final String c;
    private final String d;

    public bi(aj ajVar) {
        super(4, new bq[0]);
        this.a = ajVar.a;
        this.b = ajVar.b;
        this.c = ajVar.c;
        this.d = ajVar.d;
    }

    public int a() {
        int b = CodedOutputStream.b(1, this.a);
        return ((b + CodedOutputStream.b(3, b.a(this.c))) + CodedOutputStream.b(2, this.b)) + CodedOutputStream.b(4, b.a(this.d));
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, this.a);
        codedOutputStream.a(2, this.b);
        codedOutputStream.a(3, b.a(this.c));
        codedOutputStream.a(4, b.a(this.d));
    }
}
