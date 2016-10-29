package com.twitter.android.nativecards.pollcompose;

import android.view.View;
import cys;

/* compiled from: Twttr */
class w implements cys<View> {
    final /* synthetic */ PollComposeView a;

    w(PollComposeView pollComposeView) {
        this.a = pollComposeView;
    }

    public /* synthetic */ void call(Object obj) {
        a((View) obj);
    }

    public void a(View view) {
        if (this.a.b != null) {
            this.a.b.g();
        }
    }
}
