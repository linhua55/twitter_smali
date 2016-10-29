package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class y extends k<float[]> {
    y() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, float[] fArr) throws IOException {
        qVar.e(fArr.length);
        for (float b : fArr) {
            qVar.b(b);
        }
    }

    protected float[] a(p pVar, int i) throws IOException {
        int e = pVar.e();
        float[] fArr = new float[e];
        for (int i2 = 0; i2 < e; i2++) {
            fArr[i2] = pVar.g();
        }
        return fArr;
    }
}
