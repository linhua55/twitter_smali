package com.facebook.drawee.drawable;

import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* compiled from: Twttr */
public class c {
    private int a;
    private boolean b;
    private ColorFilter c;
    private int d;
    private int e;

    public c() {
        this.a = -1;
        this.b = false;
        this.c = null;
        this.d = -1;
        this.e = -1;
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(ColorFilter colorFilter) {
        this.c = colorFilter;
        this.b = true;
    }

    public void a(boolean z) {
        this.d = z ? 1 : 0;
    }

    public void b(boolean z) {
        this.e = z ? 1 : 0;
    }

    public void a(Drawable drawable) {
        boolean z = true;
        if (drawable != null) {
            if (this.a != -1) {
                drawable.setAlpha(this.a);
            }
            if (this.b) {
                drawable.setColorFilter(this.c);
            }
            if (this.d != -1) {
                boolean z2;
                if (this.d != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                drawable.setDither(z2);
            }
            if (this.e != -1) {
                if (this.e == 0) {
                    z = false;
                }
                drawable.setFilterBitmap(z);
            }
        }
    }
}
