package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class h implements OnClickListener {
    final /* synthetic */ FeedbackEnterCommentActivity a;

    h(FeedbackEnterCommentActivity feedbackEnterCommentActivity) {
        this.a = feedbackEnterCommentActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
