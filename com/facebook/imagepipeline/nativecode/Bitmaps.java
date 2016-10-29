package com.facebook.imagepipeline.nativecode;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import bq;
import defpackage.bx;
import defpackage.cf;

@bq
/* compiled from: Twttr */
public class Bitmaps {
    public static final Config a;

    @bq
    private static native void nativeCopyBitmap(Bitmap bitmap, int i, Bitmap bitmap2, int i2, int i3);

    @bq
    private static native void nativePinBitmap(Bitmap bitmap);

    static {
        a = Config.ARGB_8888;
        cf.a("bitmaps");
    }

    public static void a(Bitmap bitmap) {
        bx.a((Object) bitmap);
        nativePinBitmap(bitmap);
    }

    @TargetApi(19)
    public static void a(Bitmap bitmap, int i, int i2) {
        bx.a(bitmap.getAllocationByteCount() >= (i * i2) * 4);
        bitmap.reconfigure(i, i2, a);
    }
}
