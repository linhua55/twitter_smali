package com.google.android.gms.internal;

public class bv {
    final long a;
    final String b;
    final int c;

    bv(long j, String str, int i) {
        this.a = j;
        this.b = str;
        this.c = i;
    }

    public boolean equals(Object obj) {
        return (obj == null || !(obj instanceof bv)) ? false : ((bv) obj).a == this.a && ((bv) obj).c == this.c;
    }

    public int hashCode() {
        return (int) this.a;
    }
}
