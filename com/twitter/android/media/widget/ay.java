package com.twitter.android.media.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class ay implements OnGlobalLayoutListener {
    final /* synthetic */ int a;
    final /* synthetic */ AttachmentMediaView b;
    final /* synthetic */ int c;
    final /* synthetic */ MediaAttachmentsView d;

    ay(MediaAttachmentsView mediaAttachmentsView, int i, AttachmentMediaView attachmentMediaView, int i2) {
        this.d = mediaAttachmentsView;
        this.a = i;
        this.b = attachmentMediaView;
        this.c = i2;
    }

    public void onGlobalLayout() {
        this.b.setMaxAspectRatio(((float) (this.d.getMeasuredWidth() - (this.a * 2))) / ((float) this.c));
        this.b.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}
