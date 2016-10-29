package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.media.selection.MediaAttachmentController;

/* compiled from: Twttr */
final class bi implements OnClickListener {
    final /* synthetic */ MediaAttachmentController a;

    bi(MediaAttachmentController mediaAttachmentController) {
        this.a = mediaAttachmentController;
    }

    public void onClick(View view) {
        this.a.c();
    }
}
