package com.twitter.android.media.widget;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ AttachmentMediaView a;

    b(AttachmentMediaView attachmentMediaView) {
        this.a = attachmentMediaView;
    }

    public void onClick(View view) {
        Uri attachmentMediaKey = this.a.getAttachmentMediaKey();
        if (attachmentMediaKey != null && this.a.m != null) {
            this.a.m.a(attachmentMediaKey);
        }
    }
}
