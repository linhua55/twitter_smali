package com.twitter.android;

import android.support.v4.app.FragmentActivity;

/* compiled from: Twttr */
class os implements Runnable {
    final /* synthetic */ SearchFragment a;

    os(SearchFragment searchFragment) {
        this.a = searchFragment;
    }

    public void run() {
        FragmentActivity activity = this.a.getActivity();
        if (activity != null) {
            this.a.a(activity);
        }
    }
}
