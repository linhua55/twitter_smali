package com.twitter.android.moments.ui.fullscreen;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class cl implements OnClickListener {
    final /* synthetic */ FeedbackType a;
    final /* synthetic */ FeedbackSentiment b;
    final /* synthetic */ InternalFeedbackDialogsController c;

    cl(InternalFeedbackDialogsController internalFeedbackDialogsController, FeedbackType feedbackType, FeedbackSentiment feedbackSentiment) {
        this.c = internalFeedbackDialogsController;
        this.a = feedbackType;
        this.b = feedbackSentiment;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.c.a(this.a, this.b, i);
    }
}
