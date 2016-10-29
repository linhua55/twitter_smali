package com.twitter.android.events;

/* compiled from: Twttr */
class a implements Runnable {
    final /* synthetic */ TwitterEventActivity a;
    final /* synthetic */ EventLandingFragment b;

    a(EventLandingFragment eventLandingFragment, TwitterEventActivity twitterEventActivity) {
        this.b = eventLandingFragment;
        this.a = twitterEventActivity;
    }

    public void run() {
        this.b.ap().a(EventLandingFragment.a(this.b), this.a.C());
    }
}
