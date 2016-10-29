package com.twitter.android.media.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.util.ui.f;

/* compiled from: Twttr */
class az extends f {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ LayoutTransition b;
    final /* synthetic */ MediaAttachmentsView c;

    az(MediaAttachmentsView mediaAttachmentsView, ViewGroup viewGroup, LayoutTransition layoutTransition) {
        this.c = mediaAttachmentsView;
        this.a = viewGroup;
        this.b = layoutTransition;
    }

    public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
        if (i == 1 && view == MediaAttachmentsView.e(this.c)) {
            View childAt = this.a.getChildAt(0);
            this.a.removeView(childAt);
            this.c.addView(childAt, 0);
            MediaAttachmentsView.a(this.c, (AttachmentMediaView) childAt);
            this.c.a((AttachmentMediaView) childAt, false);
            this.b.removeTransitionListener(this);
        }
    }
}
