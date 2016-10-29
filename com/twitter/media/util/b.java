package com.twitter.media.util;

import android.graphics.Bitmap.Config;

/* compiled from: Twttr */
/* synthetic */ class b {
    static final /* synthetic */ int[] a;

    static {
        a = new int[Config.values().length];
        try {
            a[Config.ARGB_8888.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[Config.RGB_565.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[Config.ARGB_4444.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
