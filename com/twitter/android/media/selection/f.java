package com.twitter.android.media.selection;

import android.support.annotation.UiThread;
import bbn;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.library.media.manager.k;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.media.model.MediaFile;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class f extends z {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    @UiThread
    public void a(x xVar) {
        MediaAttachmentController.a(this.a.a, this.a);
        this.a.d = null;
        MediaFile a = ((k) xVar).a();
        if (a == null) {
            MediaAttachment mediaAttachment = new MediaAttachment(this.a.b, 1, MediaAttachFailure.b);
            MediaAttachmentController.b(this.a.a).put(mediaAttachment.a(), mediaAttachment);
            MediaAttachmentController.a(this.a.a, this.a.c);
            return;
        }
        EditableMedia a2 = EditableMedia.a(a, this.a.b.e, this.a.b.h);
        if (!(a2 instanceof EditableAnimatedGif)) {
            bbn.a(new IllegalStateException("found media downloaded non-gif media " + this.a.b.f));
        }
        MediaAttachment mediaAttachment2 = new MediaAttachment(new DraftAttachment(a2, this.a.b.f, this.a.b.d));
        MediaAttachmentController.b(this.a.a).put(mediaAttachment2.a(), mediaAttachment2);
        MediaAttachmentController.a(this.a.a, this.a.c);
    }
}
