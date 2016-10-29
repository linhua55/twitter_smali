package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class z extends k<double[]> {
    z() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, double[] dArr) throws IOException {
        qVar.e(dArr.length);
        for (double b : dArr) {
            qVar.b(b);
        }
    }

    protected double[] a(p pVar, int i) throws IOException {
        int e = pVar.e();
        double[] dArr = new double[e];
        for (int i2 = 0; i2 < e; i2++) {
            dArr[i2] = pVar.h();
        }
        return dArr;
    }
}
