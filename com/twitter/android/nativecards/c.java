package com.twitter.android.nativecards;

/* compiled from: Twttr */
/* synthetic */ class c {
    static final /* synthetic */ int[] a;

    static {
        a = new int[State.values().length];
        try {
            a[State.OPEN_APP.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[State.GET_APP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[State.VIEW_ON_WEB.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
