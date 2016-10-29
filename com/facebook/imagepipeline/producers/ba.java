package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.references.d;

/* compiled from: Twttr */
class ba implements d<Bitmap> {
    final /* synthetic */ az a;

    ba(az azVar) {
        this.a = azVar;
    }

    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }
}
