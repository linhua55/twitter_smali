package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;

class as {
    final String a;
    final String b;
    final long c;
    final long d;
    final long e;

    as(String str, String str2, long j, long j2, long j3) {
        boolean z = true;
        bm.a(str);
        bm.a(str2);
        bm.b(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        bm.b(z);
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = j3;
    }

    as a() {
        return new as(this.a, this.b, this.c + 1, this.d + 1, this.e);
    }

    as a(long j) {
        return new as(this.a, this.b, this.c, this.d, j);
    }
}
