package com.twitter.android.widget;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: Twttr */
public class bz {
    private final fc a;
    private float b;
    private final ViewGroup c;
    private View d;
    private float e;
    private long f;
    private float g;

    public bz(ViewGroup viewGroup) {
        this(viewGroup, new fc());
    }

    public bz(ViewGroup viewGroup, fc fcVar) {
        this.b = 0.4f;
        this.e = 0.0f;
        this.f = 0;
        this.g = Float.MAX_VALUE;
        this.c = viewGroup;
        this.a = fcVar;
    }

    public void a() {
        long a = this.a.a();
        long j = this.f == 0 ? 0 : a - this.f;
        this.f = a;
        View e = e();
        if (j > 0 && e != null) {
            if (e == this.d) {
                this.g = (e.getY() - this.e) / (((float) j) * 0.001f);
            } else {
                this.g = Float.MAX_VALUE;
            }
        }
        this.e = e != null ? e.getY() : this.e;
        this.d = e;
    }

    public void b() {
        this.f = 0;
        this.d = null;
        this.g = Float.MAX_VALUE;
    }

    public boolean c() {
        return Math.abs(this.g) <= ((float) this.c.getHeight()) * this.b;
    }

    public ViewGroup d() {
        return this.c;
    }

    public View e() {
        return this.c.getChildAt(0);
    }
}
