package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

final class b extends LruCache<f, Bitmap> {
    protected int a(f fVar, Bitmap bitmap) {
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    protected void a(boolean z, f fVar, Bitmap bitmap, Bitmap bitmap2) {
        super.entryRemoved(z, fVar, bitmap, bitmap2);
    }

    protected /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        a(z, (f) obj, (Bitmap) obj2, (Bitmap) obj3);
    }

    protected /* synthetic */ int sizeOf(Object obj, Object obj2) {
        return a((f) obj, (Bitmap) obj2);
    }
}
