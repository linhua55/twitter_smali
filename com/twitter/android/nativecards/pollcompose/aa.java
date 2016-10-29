package com.twitter.android.nativecards.pollcompose;

/* compiled from: Twttr */
class aa implements l {
    final /* synthetic */ PollComposeView a;

    aa(PollComposeView pollComposeView) {
        this.a = pollComposeView;
    }

    public void a(long j) {
        PollComposeView.a(this.a).setText(k.a(j, PollComposeView.a(this.a).getContext()));
        if (this.a.b != null) {
            this.a.b.a(j);
        }
    }
}
