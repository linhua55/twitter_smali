package com.crashlytics.android.core;

import an;
import java.io.IOException;

/* compiled from: Twttr */
final class bs extends bq {
    private final String a;
    private final String b;
    private final long c;

    public bs(an anVar) {
        super(3, new bq[0]);
        this.a = anVar.a;
        this.b = anVar.b;
        this.c = anVar.c;
    }

    public int a() {
        return (CodedOutputStream.b(1, b.a(this.a)) + CodedOutputStream.b(2, b.a(this.b))) + CodedOutputStream.b(3, this.c);
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, b.a(this.a));
        codedOutputStream.a(2, b.a(this.b));
        codedOutputStream.a(3, this.c);
    }
}
