package com.twitter.android.media.selection;

import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
class b implements AttachMediaListener {
    final /* synthetic */ AttachMediaListener a;
    final /* synthetic */ HashSet b;
    final /* synthetic */ MediaAttachmentController c;

    b(MediaAttachmentController mediaAttachmentController, AttachMediaListener attachMediaListener, HashSet hashSet) {
        this.c = mediaAttachmentController;
        this.a = attachMediaListener;
        this.b = hashSet;
    }

    public boolean a(MediaAttachment mediaAttachment) {
        if (this.a.a(mediaAttachment)) {
            return true;
        }
        this.b.remove(this);
        return false;
    }

    public void a(List<MediaAttachment> list) {
        this.b.remove(this);
        if (this.b.isEmpty()) {
            this.a.a(list);
        }
    }
}
