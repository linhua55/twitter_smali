package com.twitter.android.nativecards.pollcompose;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class r implements OnClickListener {
    final /* synthetic */ PollComposeView a;

    r(PollComposeView pollComposeView) {
        this.a = pollComposeView;
    }

    public void onClick(View view) {
        if (this.a.b != null) {
            this.a.b.a(false);
        }
    }
}
