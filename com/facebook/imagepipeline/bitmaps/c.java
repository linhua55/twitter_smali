package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.common.references.d;

/* compiled from: Twttr */
class c implements d<Bitmap> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(Bitmap bitmap) {
        try {
            this.a.b.b(bitmap);
        } finally {
            bitmap.recycle();
        }
    }
}
