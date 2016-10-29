package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.composer.aw;

/* compiled from: Twttr */
class c implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ CustomerFeedbackCompletedView b;

    c(CustomerFeedbackCompletedView customerFeedbackCompletedView, Context context) {
        this.b = customerFeedbackCompletedView;
        this.a = context;
    }

    public void onClick(View view) {
        this.b.a("submit");
        this.b.c.a();
        this.a.startActivity(((aw) aw.a().a(this.b.b.m(), 0).d(true)).a(this.a));
    }
}
