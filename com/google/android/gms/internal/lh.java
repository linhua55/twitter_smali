package com.google.android.gms.internal;

import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.AdRequest$Gender;

/* synthetic */ class lh {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[AdRequest$ErrorCode.values().length];
        try {
            b[AdRequest$ErrorCode.INTERNAL_ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[AdRequest$ErrorCode.INVALID_REQUEST.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[AdRequest$ErrorCode.NETWORK_ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            b[AdRequest$ErrorCode.NO_FILL.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        a = new int[AdRequest$Gender.values().length];
        try {
            a[AdRequest$Gender.FEMALE.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[AdRequest$Gender.MALE.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[AdRequest$Gender.UNKNOWN.ordinal()] = 3;
        } catch (NoSuchFieldError e7) {
        }
    }
}
