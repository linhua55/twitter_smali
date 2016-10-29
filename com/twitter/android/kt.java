package com.twitter.android;

import com.twitter.model.login.OneFactorEligibleFactor.FactorType;

/* compiled from: Twttr */
/* synthetic */ class kt {
    static final /* synthetic */ int[] a;

    static {
        a = new int[FactorType.values().length];
        try {
            a[FactorType.b.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[FactorType.a.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
