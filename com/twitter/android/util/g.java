package com.twitter.android.util;

import com.twitter.android.util.AppRatingPromptHelper.AppRatingEvent;

/* compiled from: Twttr */
/* synthetic */ class g {
    static final /* synthetic */ int[] a;

    static {
        a = new int[AppRatingEvent.values().length];
        try {
            a[AppRatingEvent.IMPRESSION.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[AppRatingEvent.RATE_YES.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[AppRatingEvent.RATE_NO.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[AppRatingEvent.RATE_LATER.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[AppRatingEvent.APP_FEEDBACK.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[AppRatingEvent.RATE_1_STAR.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[AppRatingEvent.RATE_2_STAR.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[AppRatingEvent.RATE_3_STAR.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            a[AppRatingEvent.RATE_4_STAR.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
        try {
            a[AppRatingEvent.RATE_5_STAR.ordinal()] = 10;
        } catch (NoSuchFieldError e10) {
        }
    }
}
