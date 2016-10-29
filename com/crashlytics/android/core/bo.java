package com.crashlytics.android.core;

import java.io.IOException;

/* compiled from: Twttr */
final class bo extends bq {
    b a;

    public bo(b bVar) {
        super(6, new bq[0]);
        this.a = bVar;
    }

    public int a() {
        return CodedOutputStream.b(1, this.a);
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, this.a);
    }
}
