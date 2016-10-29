package com.twitter.android.moments.ui.fullscreen;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

/* compiled from: Twttr */
class cm implements OnClickListener {
    final /* synthetic */ FeedbackType a;
    final /* synthetic */ FeedbackSentiment b;
    final /* synthetic */ int c;
    final /* synthetic */ InternalFeedbackDialogsController d;

    cm(InternalFeedbackDialogsController internalFeedbackDialogsController, FeedbackType feedbackType, FeedbackSentiment feedbackSentiment, int i) {
        this.d = internalFeedbackDialogsController;
        this.a = feedbackType;
        this.b = feedbackSentiment;
        this.c = i;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.d.a(this.a, this.b, this.c, ((EditText) ((Dialog) dialogInterface).findViewById(2131952753)).getText().toString());
    }
}
