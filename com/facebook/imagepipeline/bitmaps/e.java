package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.facebook.common.references.a;
import com.facebook.common.references.d;

/* compiled from: Twttr */
public class e {
    private final d<Bitmap> a;

    public e() {
        this.a = new f(this);
    }

    a<Bitmap> a(int i, int i2) {
        return a.a(Bitmap.createBitmap(i, i2, Config.ARGB_8888), this.a);
    }
}
