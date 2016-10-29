package com.crashlytics.android.core;

import java.io.IOException;

/* compiled from: Twttr */
final class bl extends bq {
    private final long a;
    private final String b;

    public bl(long j, String str, bq... bqVarArr) {
        super(10, bqVarArr);
        this.a = j;
        this.b = str;
    }

    public int a() {
        return CodedOutputStream.b(1, this.a) + CodedOutputStream.b(2, b.a(this.b));
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, this.a);
        codedOutputStream.a(2, b.a(this.b));
    }
}
