package com.twitter.android.media.camera;

import android.content.Context;
import android.os.AsyncTask;
import bbn;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.j;
import com.twitter.media.util.p;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class af extends AsyncTask<Void, Void, ImageFile> implements p {
    private final Context a;
    private final WeakReference<ag> b;
    private final ImageFile c;
    private ImageFile d;
    private boolean e;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((ImageFile) obj);
    }

    af(Context context, ImageFile imageFile, ag agVar) {
        this.a = context.getApplicationContext();
        this.c = imageFile;
        this.b = new WeakReference(agVar);
    }

    protected ImageFile a(Void... voidArr) {
        com.twitter.library.media.util.p pVar = new com.twitter.library.media.util.p(this.c.d);
        pVar.l = "TwitterCamera";
        pVar.m = this;
        try {
            File b = j.a(this.a).b(pVar);
            if (b != null) {
                ImageFile imageFile = (ImageFile) MediaFile.a(b, MediaType.b);
                return imageFile;
            }
            this.c.b();
            return null;
        } catch (Throwable th) {
            bbn.a(th);
        } finally {
            this.c.b();
        }
    }

    protected void a(ImageFile imageFile) {
        ag agVar = (ag) this.b.get();
        if (agVar == null) {
            return;
        }
        if (imageFile == null) {
            agVar.d();
        } else if (this.e) {
            agVar.b(imageFile);
        } else {
            this.d = imageFile;
        }
    }

    public void a(File file) {
        this.e = true;
        if (this.d != null) {
            ag agVar = (ag) this.b.get();
            if (agVar != null) {
                agVar.b(this.d);
            }
        }
    }
}
