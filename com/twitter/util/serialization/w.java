package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class w extends k<int[]> {
    w() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, int[] iArr) throws IOException {
        qVar.e(iArr.length);
        for (int e : iArr) {
            qVar.e(e);
        }
    }

    protected int[] a(p pVar, int i) throws IOException {
        int e = pVar.e();
        int[] iArr = new int[e];
        for (int i2 = 0; i2 < e; i2++) {
            iArr[i2] = pVar.e();
        }
        return iArr;
    }
}
