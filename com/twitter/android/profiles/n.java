package com.twitter.android.profiles;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import com.twitter.library.media.util.r;
import com.twitter.library.media.util.t;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableImage;
import cvi;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class n extends AsyncTask<Void, Void, MediaFile> {
    private final WeakReference<Activity> a;
    private final EditableImage b;
    private final long c;
    private final o d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((MediaFile) obj);
    }

    n(Activity activity, EditableImage editableImage, long j, o oVar) {
        this.a = new WeakReference(activity);
        this.d = oVar;
        this.b = editableImage;
        this.c = j;
    }

    protected MediaFile a(Void... voidArr) {
        Context context = (Activity) this.a.get();
        if (this.b == null || context == null) {
            return null;
        }
        r.c(context, this.c);
        MediaFile a = t.a(context, this.b);
        if (a == null) {
            return null;
        }
        File file = a.d;
        File b = r.b(context, this.c);
        if (b == null) {
            return null;
        }
        if (b.exists()) {
            b.delete();
        }
        Object obj = !a.a(this.b.k) ? 1 : null;
        if ((obj != null && file.renameTo(b)) || cvi.b(file, b)) {
            return MediaFile.a(b, MediaType.b);
        }
        if (obj != null) {
            file.delete();
        }
        return null;
    }

    protected void a(MediaFile mediaFile) {
        if (this.d != null) {
            this.d.b(mediaFile);
        } else {
            mediaFile.c();
        }
    }
}
