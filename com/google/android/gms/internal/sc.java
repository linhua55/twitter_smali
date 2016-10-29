package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;

@oi
public class sc {
    private long a;
    private long b;
    private Object c;

    public sc(long j) {
        this.b = Long.MIN_VALUE;
        this.c = new Object();
        this.a = j;
    }

    public boolean a() {
        boolean z;
        synchronized (this.c) {
            long b = ar.i().b();
            if (this.b + this.a > b) {
                z = false;
            } else {
                this.b = b;
                z = true;
            }
        }
        return z;
    }
}
