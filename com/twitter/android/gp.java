package com.twitter.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.Toast;
import com.twitter.library.media.manager.l;
import com.twitter.library.media.util.p;
import com.twitter.media.util.a;
import com.twitter.media.util.j;
import com.twitter.platform.PlatformContext;
import defpackage.aac;
import defpackage.aag;
import defpackage.aai;
import defpackage.aaj;
import java.io.File;

/* compiled from: Twttr */
class gp extends AsyncTask<aag, Void, File> {
    private final Context a;
    private final aac b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((aag[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((File) obj);
    }

    gp(Context context, aac aac) {
        this.a = context.getApplicationContext();
        this.b = aac;
    }

    protected File a(aag... aagArr) {
        aaj aaj = (aaj) aagArr[0];
        aai a = aaj != null ? this.b.a(aaj.a) : null;
        if (a != null) {
            File d = l.a(this.a).d(a.c);
            if (d != null) {
                String lastPathSegment = Uri.parse(a.c.q).getLastPathSegment();
                synchronized (d) {
                    File a2;
                    if (b(d)) {
                        a2 = a(aaj);
                        return a2;
                    }
                    p pVar = new p(d);
                    pVar.k = lastPathSegment;
                    a2 = j.a(this.a).a(pVar);
                    return a2;
                }
            }
        }
        return null;
    }

    private File a(aaj aaj) {
        Bitmap bitmap;
        ImageView f = aaj.f();
        if (f == null || f.getDrawable() == null || !(f.getDrawable() instanceof BitmapDrawable)) {
            bitmap = null;
        } else {
            bitmap = ((BitmapDrawable) f.getDrawable()).getBitmap();
        }
        if (!(bitmap == null || this.a == null)) {
            File a = a.a(bitmap, CompressFormat.JPEG, 95);
            if (a != null) {
                try {
                    File b = j.a(this.a).b(new p(a));
                    return b;
                } finally {
                    PlatformContext.f().e().b(a);
                }
            }
        }
        return null;
    }

    private static boolean b(File file) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (options.outMimeType == null || "image/webp".equals(options.outMimeType)) {
            return true;
        }
        return false;
    }

    protected void a(File file) {
        Toast.makeText(this.a, file != null ? 2131363525 : 2131363524, 0).show();
    }
}
