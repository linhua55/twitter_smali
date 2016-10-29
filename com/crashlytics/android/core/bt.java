package com.crashlytics.android.core;

import defpackage.ao;
import java.io.IOException;

/* compiled from: Twttr */
final class bt extends bq {
    private final String a;
    private final int b;

    public bt(ao aoVar, br brVar) {
        super(1, brVar);
        this.a = aoVar.a;
        this.b = aoVar.b;
    }

    public int a() {
        return (d() ? CodedOutputStream.b(1, b.a(this.a)) : 0) + CodedOutputStream.d(2, this.b);
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        if (d()) {
            codedOutputStream.a(1, b.a(this.a));
        }
        codedOutputStream.a(2, this.b);
    }

    private boolean d() {
        return this.a != null && this.a.length() > 0;
    }
}
