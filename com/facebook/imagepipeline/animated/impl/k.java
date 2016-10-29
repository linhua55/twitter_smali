package com.facebook.imagepipeline.animated.impl;

/* compiled from: Twttr */
/* synthetic */ class k {
    static final /* synthetic */ int[] a;

    static {
        a = new int[FrameNeededResult.values().length];
        try {
            a[FrameNeededResult.REQUIRED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[FrameNeededResult.NOT_REQUIRED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[FrameNeededResult.ABORT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[FrameNeededResult.SKIP.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
