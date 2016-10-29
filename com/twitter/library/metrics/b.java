package com.twitter.library.metrics;

import com.twitter.library.network.DataUsageEvent.Type;

/* compiled from: Twttr */
/* synthetic */ class b {
    static final /* synthetic */ int[] a;

    static {
        a = new int[Type.values().length];
        try {
            a[Type.VIDEO.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[Type.IMAGE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[Type.API.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
