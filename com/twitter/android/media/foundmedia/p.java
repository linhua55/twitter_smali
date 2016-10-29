package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.android.util.v;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.foundmedia.f;
import com.twitter.platform.PlatformContext;
import defpackage.cun;
import defpackage.cvi;
import java.io.File;

/* compiled from: Twttr */
class p extends AsyncTask<Void, Void, MediaFile> {
    final /* synthetic */ MediaFile a;
    final /* synthetic */ Context b;
    final /* synthetic */ f c;
    final /* synthetic */ GifGalleryActivity d;

    p(GifGalleryActivity gifGalleryActivity, MediaFile mediaFile, Context context, f fVar) {
        this.d = gifGalleryActivity;
        this.a = mediaFile;
        this.b = context;
        this.c = fVar;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((MediaFile) obj);
    }

    protected MediaFile a(Void... voidArr) {
        if (this.a == null) {
            return null;
        }
        File a = cvi.a(this.b);
        if (a == null) {
            a = this.b.getCacheDir();
            if (a == null) {
                return this.a;
            }
        }
        if (!this.a.d.getAbsolutePath().startsWith(a.getAbsolutePath())) {
            return this.a;
        }
        MediaType mediaType = this.a.f;
        File a2 = PlatformContext.f().e().a(mediaType.extension);
        if (a2 == null || !cun.b(this.a.d, a2)) {
            return null;
        }
        return MediaFile.a(a2, mediaType);
    }

    protected void a(MediaFile mediaFile) {
        DraftAttachment draftAttachment = new DraftAttachment(this.c, mediaFile);
        if (v.a(this.d.e)) {
            GifPreviewActivity.a(this.d, draftAttachment, 1);
            return;
        }
        this.d.setResult(-1, v.a(draftAttachment, this.d.d == 1 ? "search" : "select"));
        this.d.finish();
    }
}
