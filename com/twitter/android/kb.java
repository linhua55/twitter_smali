package com.twitter.android;

import android.view.View.OnSystemUiVisibilityChangeListener;

/* compiled from: Twttr */
class kb implements OnSystemUiVisibilityChangeListener {
    final /* synthetic */ MediaPlayerActivity a;

    kb(MediaPlayerActivity mediaPlayerActivity) {
        this.a = mediaPlayerActivity;
    }

    public void onSystemUiVisibilityChange(int i) {
        if (i == 0) {
            this.a.a.d();
        }
    }
}
