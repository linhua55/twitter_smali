package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class j implements OnClickListener {
    final /* synthetic */ FeedbackEnterCommentActivity a;

    j(FeedbackEnterCommentActivity feedbackEnterCommentActivity) {
        this.a = feedbackEnterCommentActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.a(true);
    }
}
