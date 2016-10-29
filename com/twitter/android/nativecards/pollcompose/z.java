package com.twitter.android.nativecards.pollcompose;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class z implements OnClickListener {
    final /* synthetic */ PollComposeView a;

    z(PollComposeView pollComposeView) {
        this.a = pollComposeView;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.a.b != null) {
            this.a.b.a(true);
        }
    }
}
