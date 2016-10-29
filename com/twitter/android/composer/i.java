package com.twitter.android.composer;

import android.view.View;
import com.twitter.library.widget.ObservableScrollView;
import com.twitter.library.widget.w;

/* compiled from: Twttr */
class i implements w {
    final /* synthetic */ View a;
    final /* synthetic */ ComposerScrollView b;
    final /* synthetic */ TweetBox c;
    final /* synthetic */ ComposerActivity d;
    private boolean e;

    i(ComposerActivity composerActivity, View view, ComposerScrollView composerScrollView, TweetBox tweetBox) {
        this.d = composerActivity;
        this.a = view;
        this.b = composerScrollView;
        this.c = tweetBox;
    }

    public void a(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        this.a.setVisibility(i2 == 0 ? 4 : 0);
    }

    public void a(ObservableScrollView observableScrollView) {
        if (!this.e && this.b.c()) {
            this.d.h.f();
            this.e = true;
        }
    }

    public void b(ObservableScrollView observableScrollView) {
        this.e = false;
    }

    public void b(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        if (this.d.S == 4) {
            this.c.a();
        }
    }
}
