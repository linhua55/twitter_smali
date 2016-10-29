package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class x extends k<long[]> {
    x() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, long[] jArr) throws IOException {
        qVar.e(jArr.length);
        for (long b : jArr) {
            qVar.b(b);
        }
    }

    protected long[] a(p pVar, int i) throws IOException {
        int e = pVar.e();
        long[] jArr = new long[e];
        for (int i2 = 0; i2 < e; i2++) {
            jArr[i2] = pVar.f();
        }
        return jArr;
    }
}
