package com.crashlytics.android.core;

import ak;
import java.io.IOException;

/* compiled from: Twttr */
final class bj extends bq {
    private final String a;
    private final String b;

    public bj(ak akVar) {
        super(2, new bq[0]);
        this.a = akVar.a;
        this.b = akVar.b;
    }

    public int a() {
        return CodedOutputStream.b(2, b.a(this.b == null ? TtmlNode.ANONYMOUS_REGION_ID : this.b)) + CodedOutputStream.b(1, b.a(this.a));
    }

    public void a(CodedOutputStream codedOutputStream) throws IOException {
        codedOutputStream.a(1, b.a(this.a));
        codedOutputStream.a(2, b.a(this.b == null ? TtmlNode.ANONYMOUS_REGION_ID : this.b));
    }
}
