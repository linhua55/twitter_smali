package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ BaseCustomerFeedbackView a;

    a(BaseCustomerFeedbackView baseCustomerFeedbackView) {
        this.a = baseCustomerFeedbackView;
    }

    public void onClick(View view) {
        this.a.a("dismiss");
        this.a.c.a();
    }
}
