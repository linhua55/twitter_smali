package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import defpackage.bx;
import gp;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class b {
    @GuardedBy("this")
    private int a;
    @GuardedBy("this")
    private long b;
    private final int c;
    private final int d;

    public b(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i2 <= 0) {
            z2 = false;
        }
        bx.a(z2);
        this.c = i;
        this.d = i2;
    }

    public synchronized boolean a(Bitmap bitmap) {
        boolean z;
        int a = gp.a(bitmap);
        if (this.a >= this.c || this.b + ((long) a) > ((long) this.d)) {
            z = false;
        } else {
            this.a++;
            this.b = ((long) a) + this.b;
            z = true;
        }
        return z;
    }

    public synchronized void b(Bitmap bitmap) {
        boolean z = true;
        synchronized (this) {
            int a = gp.a(bitmap);
            bx.a(this.a > 0, (Object) "No bitmaps registered.");
            if (((long) a) > this.b) {
                z = false;
            }
            bx.a(z, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(a), Long.valueOf(this.b));
            this.b -= (long) a;
            this.a--;
        }
    }
}
