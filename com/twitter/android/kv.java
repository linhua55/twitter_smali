package com.twitter.android;

import com.twitter.model.login.OneFactorEligibleFactor.FactorType;

/* compiled from: Twttr */
/* synthetic */ class kv {
    static final /* synthetic */ int[] a;

    static {
        a = new int[FactorType.values().length];
        try {
            a[FactorType.EMAIL.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[FactorType.SMS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
