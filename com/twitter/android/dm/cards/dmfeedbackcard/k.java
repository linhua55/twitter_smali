package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: Twttr */
class k implements OnDismissListener {
    final /* synthetic */ FeedbackEnterCommentActivity a;

    k(FeedbackEnterCommentActivity feedbackEnterCommentActivity) {
        this.a = feedbackEnterCommentActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.a.b.setEnabled(true);
        this.a.a.setEnabled(this.a.j());
    }
}
