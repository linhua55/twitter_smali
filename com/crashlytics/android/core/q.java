package com.crashlytics.android.core;

/* compiled from: Twttr */
public class q {
    private float a;
    private y b;
    private bu c;
    private boolean d;

    public q() {
        this.a = -1.0f;
        this.d = false;
    }

    public q a(boolean z) {
        this.d = z;
        return this;
    }

    public f a() {
        if (this.a < 0.0f) {
            this.a = 1.0f;
        }
        return new f(this.a, this.b, this.c, this.d);
    }
}
