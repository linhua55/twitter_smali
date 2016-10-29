package com.twitter.android.geo;

import com.twitter.library.api.geo.PlaceAttribution;

/* compiled from: Twttr */
/* synthetic */ class h {
    static final /* synthetic */ int[] a;

    static {
        a = new int[PlaceAttribution.values().length];
        try {
            a[PlaceAttribution.FOURSQUARE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[PlaceAttribution.YELP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
