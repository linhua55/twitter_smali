package com.twitter.android.nativecards;

/* compiled from: Twttr */
/* synthetic */ class h {
    static final /* synthetic */ int[] a;

    static {
        a = new int[PreviewState.values().length];
        try {
            a[PreviewState.NOT_SHOWING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[PreviewState.PENDING.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[PreviewState.SHOWING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[PreviewState.DISMISSED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[PreviewState.NO_CARD.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
