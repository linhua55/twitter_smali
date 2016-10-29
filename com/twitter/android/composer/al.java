package com.twitter.android.composer;

import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
/* synthetic */ class al {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MediaType.values().length];
        try {
            a[MediaType.IMAGE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MediaType.VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[MediaType.SEGMENTED_VIDEO.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MediaType.ANIMATED_GIF.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
