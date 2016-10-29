package com.twitter.android.composer;

import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import java.util.List;

/* compiled from: Twttr */
class as implements AttachMediaListener {
    final /* synthetic */ ComposerActivity a;
    private final boolean b;

    as(ComposerActivity composerActivity, boolean z) {
        this.a = composerActivity;
        this.b = z;
    }

    public boolean a(MediaAttachment mediaAttachment) {
        if (!this.a.a(mediaAttachment.a(), mediaAttachment.b(), true)) {
            return false;
        }
        if (mediaAttachment.a(2) == null) {
            return true;
        }
        this.a.a(mediaAttachment.d());
        return true;
    }

    public void a(List<MediaAttachment> list) {
        this.a.a((List) list, this.b);
    }
}
