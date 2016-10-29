package com.facebook.drawee.drawable;

import com.facebook.drawee.drawable.ScalingUtils.ScaleType;

/* compiled from: Twttr */
/* synthetic */ class n {
    static final /* synthetic */ int[] a;

    static {
        a = new int[ScaleType.values().length];
        try {
            a[ScaleType.FIT_XY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[ScaleType.FIT_START.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[ScaleType.FIT_CENTER.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[ScaleType.FIT_END.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[ScaleType.CENTER.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[ScaleType.CENTER_INSIDE.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[ScaleType.CENTER_CROP.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[ScaleType.FOCUS_CROP.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
    }
}
