package com.twitter.android.moments.ui.fullscreen;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class ck implements OnClickListener {
    final /* synthetic */ FeedbackType a;
    final /* synthetic */ InternalFeedbackDialogsController b;

    ck(InternalFeedbackDialogsController internalFeedbackDialogsController, FeedbackType feedbackType) {
        this.b = internalFeedbackDialogsController;
        this.a = feedbackType;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == FeedbackSentiment.POSITIVE.position) {
            this.b.a(this.a, FeedbackSentiment.POSITIVE);
        } else if (i == FeedbackType.PAGE.position) {
            this.b.a(this.a, FeedbackSentiment.NEGATIVE);
        }
    }
}
