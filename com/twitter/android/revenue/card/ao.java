package com.twitter.android.revenue.card;

import com.twitter.android.card.CardActionHelper$AppStatus;

/* compiled from: Twttr */
/* synthetic */ class ao {
    static final /* synthetic */ int[] a;

    static {
        a = new int[CardActionHelper$AppStatus.values().length];
        try {
            a[CardActionHelper$AppStatus.INSTALLED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[CardActionHelper$AppStatus.NOT_INSTALLED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
