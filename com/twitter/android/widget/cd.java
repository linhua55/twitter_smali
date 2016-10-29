package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class cd implements OnClickListener {
    final /* synthetic */ MediaPlayerView a;

    cd(MediaPlayerView mediaPlayerView) {
        this.a = mediaPlayerView;
    }

    public void onClick(View view) {
        MediaPlayerView.a(this.a);
        if (MediaPlayerView.b(this.a) != null) {
            MediaPlayerView.b(this.a).seekTo(0);
            MediaPlayerView.c(this.a);
            this.a.start();
        }
    }
}
