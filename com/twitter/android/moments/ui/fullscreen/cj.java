package com.twitter.android.moments.ui.fullscreen;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class cj implements OnClickListener {
    final /* synthetic */ InternalFeedbackDialogsController a;

    cj(InternalFeedbackDialogsController internalFeedbackDialogsController) {
        this.a = internalFeedbackDialogsController;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == FeedbackType.MOMENT.position) {
            this.a.a(FeedbackType.MOMENT);
        } else if (i == FeedbackType.PAGE.position) {
            this.a.a(FeedbackType.PAGE);
        }
    }
}
