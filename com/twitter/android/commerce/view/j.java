package com.twitter.android.commerce.view;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class j implements OnClickListener {
    final /* synthetic */ OfferSinglePageNUXActivity a;

    j(OfferSinglePageNUXActivity offerSinglePageNUXActivity) {
        this.a = offerSinglePageNUXActivity;
    }

    public void onClick(View view) {
        this.a.finish();
    }
}
