package com.twitter.android;

/* compiled from: Twttr */
class mh implements Runnable {
    final /* synthetic */ ProfileActivity a;

    mh(ProfileActivity profileActivity) {
        this.a = profileActivity;
    }

    public void run() {
        this.a.X().requestLayout();
    }
}
