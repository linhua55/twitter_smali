package com.google.android.gms.gcm;

import android.os.Bundle;

public class o {
    public static final o a;
    public static final o b;
    private final int c;
    private final int d;
    private final int e;

    static {
        a = new o(0, 30, 3600);
        b = new o(1, 30, 3600);
    }

    private o(int i, int i2, int i3) {
        this.c = i;
        this.d = i2;
        this.e = i3;
    }

    public int a() {
        return this.c;
    }

    public Bundle a(Bundle bundle) {
        bundle.putInt("retry_policy", this.c);
        bundle.putInt("initial_backoff_seconds", this.d);
        bundle.putInt("maximum_backoff_seconds", this.e);
        return bundle;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.e;
    }
}
