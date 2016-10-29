package com.twitter.android.profiles;

import android.app.Activity;
import android.os.AsyncTask;
import com.twitter.library.media.util.r;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class m extends AsyncTask<Void, Void, MediaFile> {
    private final WeakReference<Activity> a;
    private final long b;
    private final o c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((MediaFile) obj);
    }

    m(Activity activity, long j, o oVar) {
        this.c = oVar;
        this.a = new WeakReference(activity);
        this.b = j;
    }

    protected MediaFile a(Void... voidArr) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            File a = r.a(activity.getApplicationContext(), this.b);
            if (a != null) {
                return MediaFile.a(a, MediaType.b);
            }
        }
        return null;
    }

    protected void a(MediaFile mediaFile) {
        if (((Activity) this.a.get()) != null) {
            this.c.a(mediaFile);
        } else if (mediaFile != null) {
            mediaFile.c();
        }
    }
}
