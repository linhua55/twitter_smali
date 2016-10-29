package com.twitter.android.media.imageeditor;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.AsyncTask;
import com.twitter.media.c;
import com.twitter.media.filters.Filters;
import cvi;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
abstract class ae extends AsyncTask<Void, Void, Filters> {
    final WeakReference<Context> b;

    protected abstract void a(Filters filters);

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        b((Filters) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Filters) obj);
    }

    private ae(Context context) {
        this.b = new WeakReference(context);
    }

    protected Filters a(Void... voidArr) {
        Context context = (Context) this.b.get();
        if (context != null) {
            Filters filters = new Filters();
            AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(c.filter_resources);
            try {
                if (filters.a(context, openRawResourceFd, true)) {
                    return filters;
                }
                filters.b();
                cvi.a(openRawResourceFd);
            } finally {
                cvi.a(openRawResourceFd);
            }
        }
        return null;
    }

    protected void b(Filters filters) {
        if (filters != null) {
            filters.b();
        }
    }
}
