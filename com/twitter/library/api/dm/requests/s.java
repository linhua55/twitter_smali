package com.twitter.library.api.dm.requests;

import android.support.annotation.UiThread;
import bbn;
import com.twitter.library.media.manager.k;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.media.model.MediaFile;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class s extends z {
    final /* synthetic */ DraftAttachment a;
    final /* synthetic */ q b;

    s(q qVar, DraftAttachment draftAttachment) {
        this.b = qVar;
        this.a = draftAttachment;
    }

    @UiThread
    public void a(x xVar) {
        if (q.b(this.b) != null) {
            q.a(this.b, null);
            MediaFile a = ((k) xVar).a();
            if (a != null) {
                EditableMedia a2 = EditableMedia.a(a, this.a.e, this.a.h);
                if (a2 instanceof EditableAnimatedGif) {
                    this.a.b(null);
                    this.b.a(new DraftAttachment(a2));
                    return;
                }
                bbn.a(new IllegalStateException("found media downloaded non-gif media " + this.a.f));
            }
        }
    }
}
