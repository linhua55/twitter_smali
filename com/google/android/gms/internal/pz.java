package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.ar;

@oi
public class pz {
    private final Object a;
    private int b;
    private int c;
    private final pw d;
    private final String e;

    pz(pw pwVar, String str) {
        this.a = new Object();
        this.d = pwVar;
        this.e = str;
    }

    public pz(String str) {
        this(ar.h(), str);
    }

    public Bundle a() {
        Bundle bundle;
        synchronized (this.a) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.b);
            bundle.putInt("pmnll", this.c);
        }
        return bundle;
    }

    public void a(int i, int i2) {
        synchronized (this.a) {
            this.b = i;
            this.c = i2;
            this.d.a(this.e, this);
        }
    }
}
