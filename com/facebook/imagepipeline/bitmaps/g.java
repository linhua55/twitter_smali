package com.facebook.imagepipeline.bitmaps;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import com.facebook.common.references.a;
import gj;

/* compiled from: Twttr */
public class g {
    private final e a;
    private final b b;
    private final a c;

    public g(e eVar, b bVar, a aVar) {
        this.a = eVar;
        this.b = bVar;
        this.c = aVar;
    }

    @SuppressLint({"NewApi"})
    public a<Bitmap> a(int i, int i2) {
        if (VERSION.SDK_INT >= 21) {
            return this.c.a(i, i2);
        }
        if (VERSION.SDK_INT >= 11) {
            return this.b.a((short) i, (short) i2);
        }
        return this.a.a(i, i2);
    }

    public a<Bitmap> a(gj gjVar) {
        if (VERSION.SDK_INT >= 21) {
            return this.c.a(gjVar);
        }
        return this.b.a(gjVar);
    }

    public a<Bitmap> a(gj gjVar, int i) {
        if (VERSION.SDK_INT >= 21) {
            return this.c.a(gjVar, i);
        }
        return this.b.a(gjVar, i);
    }
}
