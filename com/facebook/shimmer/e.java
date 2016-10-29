package com.facebook.shimmer;

import com.facebook.shimmer.ShimmerFrameLayout.MaskAngle;
import com.facebook.shimmer.ShimmerFrameLayout.MaskShape;

/* compiled from: Twttr */
/* synthetic */ class e {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[MaskAngle.values().length];
        try {
            b[MaskAngle.CW_0.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[MaskAngle.CW_90.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[MaskAngle.CW_180.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            b[MaskAngle.CW_270.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        a = new int[MaskShape.values().length];
        try {
            a[MaskShape.LINEAR.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[MaskShape.RADIAL.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
    }
}
