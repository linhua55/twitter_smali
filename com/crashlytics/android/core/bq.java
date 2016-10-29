package com.crashlytics.android.core;

import java.io.IOException;

/* compiled from: Twttr */
abstract class bq {
    private final int a;
    private final bq[] b;

    public bq(int i, bq... bqVarArr) {
        this.a = i;
        if (bqVarArr == null) {
            bqVarArr = bg.b;
        }
        this.b = bqVarArr;
    }

    public int b() {
        int c = c();
        return (c + CodedOutputStream.l(c)) + CodedOutputStream.j(this.a);
    }

    public int c() {
        int a = a();
        for (bq b : this.b) {
            a += b.b();
        }
        return a;
    }

    public void b(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.g(this.a, 2);
        codedOutputStream.k(c());
        a(codedOutputStream);
        for (bq b : this.b) {
            b.b(codedOutputStream);
        }
    }

    public int a() {
        return 0;
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
    }
}
