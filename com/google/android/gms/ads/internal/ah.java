package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.be;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;

@oi
public class ah extends be {
    private static final Object a;
    private static ah b;
    private final Object c;
    private boolean d;
    private float e;

    static {
        a = new Object();
    }

    public static ah b() {
        ah ahVar;
        synchronized (a) {
            ahVar = b;
        }
        return ahVar;
    }

    public void a() {
        synchronized (a) {
            if (this.d) {
                b.d("Mobile ads is initialized already.");
                return;
            }
            this.d = true;
        }
    }

    public void a(float f) {
        synchronized (this.c) {
            this.e = f;
        }
    }

    public float c() {
        float f;
        synchronized (this.c) {
            f = this.e;
        }
        return f;
    }

    public boolean d() {
        boolean z;
        synchronized (this.c) {
            z = this.e >= 0.0f;
        }
        return z;
    }
}
