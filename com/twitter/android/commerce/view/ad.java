package com.twitter.android.commerce.view;

import com.twitter.android.commerce.view.ProductSummaryActivity.ProductSelectAdapter.SpinnerState;
import com.twitter.library.commerce.model.TaxType;

/* compiled from: Twttr */
/* synthetic */ class ad {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[SpinnerState.values().length];
        try {
            b[SpinnerState.UNAVAILABLE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[SpinnerState.OUT_OF_STOCK.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        a = new int[TaxType.values().length];
        try {
            a[TaxType.CALCULATED.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[TaxType.ESTIMATED.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[TaxType.INCLUDED_IN_PRICE.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
    }
}
