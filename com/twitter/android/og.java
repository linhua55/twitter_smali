package com.twitter.android;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* compiled from: Twttr */
public class og implements od {
    private final oc a;
    private final oe b;
    private final of c;

    public og(of ofVar, oe oeVar, oc ocVar) {
        this.b = oeVar;
        this.a = ocVar;
        this.c = ofVar;
    }

    public void b() {
        this.a.b();
        a();
    }

    public void a(Bitmap bitmap, boolean z) {
        this.a.a(bitmap, z);
        a();
    }

    public void a() {
        this.a.a(this.c.t());
        if (c()) {
            a(this.a.a(this.b.u()));
        } else {
            a(this.a.a());
        }
    }

    private boolean c() {
        return this.c.t() >= 1.0f;
    }

    private void a(Drawable drawable) {
        this.c.b(drawable);
    }
}
