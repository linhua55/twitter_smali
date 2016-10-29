package com.twitter.android.vit;

import com.twitter.android.vit.VitFilterBarViewDelegate.VitFilter;

/* compiled from: Twttr */
/* synthetic */ class i {
    static final /* synthetic */ int[] a;

    static {
        a = new int[VitFilter.values().length];
        try {
            a[VitFilter.ALL.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[VitFilter.MENTIONS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[VitFilter.VERIFIED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
