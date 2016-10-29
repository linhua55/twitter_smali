package com.twitter.android.media.camera;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.service.tasks.CropTask;
import com.twitter.media.util.ImageOrientation;
import com.twitter.media.util.f;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.o;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import cvi;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class v extends AsyncTask<Void, Void, ImageFile> {
    private final Context a;
    private final int b;
    private final WeakReference<u> c;
    private byte[] d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((ImageFile) obj);
    }

    v(Context context, byte[] bArr, int i, u uVar) {
        this.a = context.getApplicationContext();
        this.d = bArr;
        this.b = i;
        this.c = new WeakReference(uVar);
    }

    protected ImageFile a(Void... voidArr) {
        if (this.d == null) {
            return null;
        }
        o e = PlatformContext.f().e();
        File a = e.a(MediaType.b.extension);
        if (a == null || !cvi.a(this.d, a)) {
            return null;
        }
        this.d = null;
        f.a(a, ImageOrientation.a(this.b), true);
        ImageFile imageFile = (ImageFile) MediaFile.a(a, MediaType.b);
        if (imageFile == null) {
            return null;
        }
        Size size = imageFile.e;
        int a2 = size.a();
        int b = size.b();
        if (a2 * 3 == b * 4 || a2 * 4 == b * 3) {
            return imageFile;
        }
        float f;
        float f2;
        if (a2 <= b) {
            f = (float) (a2 / 3);
            f2 = (float) (b / 4);
        } else {
            f = (float) (a2 / 4);
            f2 = (float) (b / 3);
        }
        float min = Math.min(f, f2) / 2.0f;
        f = 0.5f - (min / f);
        f2 = 0.5f - (min / f2);
        c a3 = c.a(f, f2, 1.0f - f, 1.0f - f2);
        File a4 = e.a(MediaType.b.extension);
        if (a4 == null) {
            return imageFile;
        }
        CropTask cropTask = new CropTask(imageFile.a(), a4, a3, 0);
        cropTask.d(this.a);
        if (!cropTask.b()) {
            return imageFile;
        }
        imageFile.b();
        return (ImageFile) MediaFile.a(a4, MediaType.b);
    }

    protected void a(ImageFile imageFile) {
        if (imageFile != null) {
            u uVar = (u) this.c.get();
            if (uVar != null) {
                uVar.a(imageFile);
            }
        }
    }
}
