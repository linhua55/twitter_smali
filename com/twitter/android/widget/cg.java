package com.twitter.android.widget;

import android.content.Context;
import android.view.View;
import android.widget.MediaController;

/* compiled from: Twttr */
class cg extends MediaController implements cf {
    final /* synthetic */ MediaPlayerView a;

    cg(MediaPlayerView mediaPlayerView, Context context) {
        this.a = mediaPlayerView;
        super(context);
    }

    public void a(View view) {
        setAnchorView((View) view.getParent());
    }

    public void a() {
    }

    public void hide() {
        super.hide();
        if (MediaPlayerView.d(this.a) != null) {
            MediaPlayerView.d(this.a).c();
        }
    }

    public void show(int i) {
        super.show(i);
        if (MediaPlayerView.d(this.a) != null) {
            MediaPlayerView.d(this.a).b(i);
        }
    }
}
