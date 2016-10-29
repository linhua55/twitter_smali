package com.facebook.imagepipeline.nativecode;

import com.facebook.imageformat.ImageFormat;

/* compiled from: Twttr */
/* synthetic */ class b {
    static final /* synthetic */ int[] a;

    static {
        a = new int[ImageFormat.values().length];
        try {
            a[ImageFormat.WEBP_SIMPLE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[ImageFormat.WEBP_LOSSLESS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[ImageFormat.WEBP_EXTENDED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[ImageFormat.WEBP_EXTENDED_WITH_ALPHA.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[ImageFormat.WEBP_ANIMATED.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
