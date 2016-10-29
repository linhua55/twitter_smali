package com.twitter.android.media.widget;

import android.view.View;
import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class aw extends c {
    final /* synthetic */ View a;
    final /* synthetic */ MediaAttachmentsView b;

    aw(MediaAttachmentsView mediaAttachmentsView, View view) {
        this.b = mediaAttachmentsView;
        this.a = view;
    }

    public void onAnimationEnd(Animation animation) {
        MediaAttachmentsView.a(this.b, false);
        this.b.post(new ax(this));
        MediaAttachmentsView.d(this.b).setAnimationListener(null);
    }
}
