package com.twitter.android.geo.places;

import com.twitter.android.geo.places.PlaceLandingActivity.PageType;

/* compiled from: Twttr */
/* synthetic */ class a {
    static final /* synthetic */ int[] a;

    static {
        a = new int[PageType.values().length];
        try {
            a[PageType.TWEETS.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[PageType.MEDIA.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
