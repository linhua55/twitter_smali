package com.twitter.android.media.selection;

import android.net.Uri;
import android.support.annotation.UiThread;
import com.twitter.library.client.az;
import com.twitter.library.media.manager.k;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.util.h;

/* compiled from: Twttr */
class e implements h {
    final /* synthetic */ MediaAttachmentController a;
    private final DraftAttachment b;
    private final AttachMediaListener c;
    private String d;

    e(MediaAttachmentController mediaAttachmentController, DraftAttachment draftAttachment, AttachMediaListener attachMediaListener) {
        this.a = mediaAttachmentController;
        this.b = draftAttachment;
        this.c = attachMediaListener;
    }

    public Uri a() {
        return this.b.e;
    }

    @UiThread
    public void b() {
        h.a();
        this.d = az.a(MediaAttachmentController.a(this.a)).a(new k(MediaAttachmentController.a(this.a), this.b.f.toString(), MediaType.c), new f(this));
    }

    @UiThread
    public void c() {
        if (this.d != null) {
            az.a(MediaAttachmentController.a(this.a)).b(this.d);
            this.d = null;
        }
    }
}
