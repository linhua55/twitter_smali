package com.twitter.android;

import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import com.twitter.library.media.util.p;
import com.twitter.media.util.a;
import com.twitter.media.util.j;
import com.twitter.platform.PlatformContext;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ah extends AsyncTask<Bitmap, Void, File> {
    final /* synthetic */ BackupCodeFragment a;
    private final WeakReference<Context> b;
    private final String c;
    private ProgressDialog d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Bitmap[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((File) obj);
    }

    ah(BackupCodeFragment backupCodeFragment, Context context, String str) {
        this.a = backupCodeFragment;
        this.b = new WeakReference(context);
        this.c = str;
    }

    protected void onPreExecute() {
        Context context = (Context) this.b.get();
        if (context != null) {
            this.d = new ProgressDialog(context);
            this.d.setProgressStyle(0);
            this.d.setMessage(this.c);
            this.d.setIndeterminate(true);
            this.d.setCancelable(false);
            this.d.show();
        }
    }

    protected File a(Bitmap... bitmapArr) {
        Bitmap bitmap = bitmapArr[0];
        Context context = (Context) this.b.get();
        if (!(bitmap == null || context == null)) {
            File a = a.a(bitmap, CompressFormat.JPEG, 95);
            if (a != null) {
                try {
                    File b = j.a(context).b(new p(a));
                    return b;
                } finally {
                    PlatformContext.f().e().b(a);
                }
            }
        }
        return null;
    }

    protected void a(File file) {
        if (this.d != null) {
            this.d.dismiss();
        }
        this.a.a(file);
    }
}
