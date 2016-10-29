package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.common.references.d;

/* compiled from: Twttr */
class f implements d<Bitmap> {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }
}
