package defpackage;

import android.support.annotation.UiThread;
import bbn;
import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.media.manager.k;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.media.model.MediaFile;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.drafts.e;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.n;
import com.twitter.util.concurrent.ObservablePromise;

/* compiled from: Twttr */
/* renamed from: wr */
class wr extends z {
    final /* synthetic */ ObservablePromise a;
    final /* synthetic */ c b;
    final /* synthetic */ DraftAttachment c;
    final /* synthetic */ d d;
    final /* synthetic */ wq e;

    wr(wq wqVar, ObservablePromise observablePromise, c cVar, DraftAttachment draftAttachment, d dVar) {
        this.e = wqVar;
        this.a = observablePromise;
        this.b = cVar;
        this.c = draftAttachment;
        this.d = dVar;
    }

    @UiThread
    public void a(x xVar) {
        if (this.e.a != null) {
            this.e.a = null;
            MediaFile a = ((k) xVar).a();
            if (a == null) {
                this.a.setException(new TweetUploadException(this.b, "cannot download media"));
                return;
            }
            EditableMedia a2 = EditableMedia.a(a, this.c.e, this.c.h);
            if (!(a2 instanceof EditableAnimatedGif)) {
                bbn.a(new IllegalStateException("found media downloaded non-gif media " + this.c.f));
            }
            this.c.b(null);
            this.b.a((d) new e(this.d).a(n.b(new DraftAttachment(a2))).q());
            this.a.set(Boolean.valueOf(true));
        }
    }
}
