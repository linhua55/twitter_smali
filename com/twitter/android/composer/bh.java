package com.twitter.android.composer;

import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
/* synthetic */ class bh {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MediaType.values().length];
        try {
            a[MediaType.VIDEO.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MediaType.SEGMENTED_VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
