package com.twitter.library.api.upload.internal;

import com.twitter.library.network.forecaster.NetworkQuality;

/* compiled from: Twttr */
/* synthetic */ class af {
    static final /* synthetic */ int[] a;

    static {
        a = new int[NetworkQuality.values().length];
        try {
            a[NetworkQuality.GREAT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[NetworkQuality.GOOD.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[NetworkQuality.POOR.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[NetworkQuality.NONE.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
