package com.crashlytics.android.core;

import java.io.IOException;

/* compiled from: Twttr */
final class br extends bq {
    private final bq[] a;

    public br(bq... bqVarArr) {
        super(0, new bq[0]);
        this.a = bqVarArr;
    }

    public void b(CodedOutputStream codedOutputStream) throws IOException {
        for (bq b : this.a) {
            b.b(codedOutputStream);
        }
    }

    public int b() {
        int i = 0;
        bq[] bqVarArr = this.a;
        int i2 = 0;
        while (i < bqVarArr.length) {
            i2 += bqVarArr[i].b();
            i++;
        }
        return i2;
    }
}
