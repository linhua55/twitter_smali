package com.twitter.android.nativecards.pollcompose;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class u implements OnClickListener {
    final /* synthetic */ PollComposeView a;

    u(PollComposeView pollComposeView) {
        this.a = pollComposeView;
    }

    public void onClick(View view) {
        if (this.a.b != null) {
            this.a.b.f();
        }
    }
}
