package com.twitter.android.commerce.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class m implements OnClickListener {
    final /* synthetic */ OfferSummaryActivity a;

    m(OfferSummaryActivity offerSummaryActivity) {
        this.a = offerSummaryActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
