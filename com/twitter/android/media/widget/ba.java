package com.twitter.android.media.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.util.ui.f;

/* compiled from: Twttr */
class ba extends f {
    final /* synthetic */ be a;
    final /* synthetic */ LayoutTransition b;
    final /* synthetic */ MediaAttachmentsView c;

    ba(MediaAttachmentsView mediaAttachmentsView, be beVar, LayoutTransition layoutTransition) {
        this.c = mediaAttachmentsView;
        this.a = beVar;
        this.b = layoutTransition;
    }

    public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
        if (!layoutTransition.isRunning()) {
            this.a.a();
            this.b.removeTransitionListener(this);
        }
    }
}
