package com.twitter.android.commerce.view;

import com.twitter.library.commerce.model.OfferDetails.OfferStatus;

/* compiled from: Twttr */
/* synthetic */ class p {
    static final /* synthetic */ int[] a;

    static {
        a = new int[OfferStatus.values().length];
        try {
            a[OfferStatus.INACTIVE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[OfferStatus.REDEEMED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[OfferStatus.SAVED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[OfferStatus.EXPIRED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
