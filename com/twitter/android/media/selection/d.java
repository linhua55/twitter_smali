package com.twitter.android.media.selection;

import android.net.Uri;
import android.os.AsyncTask;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import cvi;

/* compiled from: Twttr */
final class d extends AsyncTask<Void, Void, EditableMedia> implements h {
    final /* synthetic */ MediaAttachmentController a;
    private final Uri b;
    private final MediaSource c;
    private final boolean d;
    private final AttachMediaListener e;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        b((EditableMedia) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((EditableMedia) obj);
    }

    d(MediaAttachmentController mediaAttachmentController, Uri uri, MediaSource mediaSource, AttachMediaListener attachMediaListener, boolean z) {
        this.a = mediaAttachmentController;
        this.b = uri;
        this.c = mediaSource;
        this.e = attachMediaListener;
        this.d = z;
    }

    protected EditableMedia a(Void... voidArr) {
        String a = cvi.a(MediaAttachmentController.a(this.a), this.b);
        MediaType a2 = a != null ? MediaType.a(a) : MediaType.b;
        if (a2 == MediaType.b || a2 == MediaType.c || (a2 == MediaType.d && this.d)) {
            return EditableMedia.a(MediaAttachmentController.a(this.a), this.b, a2, this.c);
        }
        return null;
    }

    protected void a(EditableMedia editableMedia) {
        if (editableMedia != null) {
            try {
                if (editableMedia instanceof EditableVideo) {
                    if (((EditableVideo) editableMedia).c()) {
                        this.a.a(editableMedia, null, this.e);
                    }
                }
                this.a.a(editableMedia, this.e);
            } catch (Throwable th) {
                MediaAttachmentController.a(this.a, this);
            }
        } else {
            this.a.a(new MediaAttachment(new DraftAttachment(this.b, this.b, MediaType.a, this.c, null), 1, MediaAttachFailure.b), this.e);
        }
        MediaAttachmentController.a(this.a, this);
    }

    protected void b(EditableMedia editableMedia) {
        if (editableMedia != null) {
            editableMedia.j();
        }
    }

    public Uri a() {
        return this.b;
    }

    public void b() {
        executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
    }

    public void c() {
        cancel(false);
    }
}
