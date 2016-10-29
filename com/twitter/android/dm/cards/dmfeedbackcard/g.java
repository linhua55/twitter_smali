package com.twitter.android.dm.cards.dmfeedbackcard;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class g implements OnClickListener {
    final /* synthetic */ FeedbackEnterCommentActivity a;

    g(FeedbackEnterCommentActivity feedbackEnterCommentActivity) {
        this.a = feedbackEnterCommentActivity;
    }

    public void onClick(View view) {
        this.a.onBackPressed();
    }
}
