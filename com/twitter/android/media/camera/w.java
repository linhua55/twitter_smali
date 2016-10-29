package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.AsyncTask;
import bbn;
import com.twitter.android.util.j;

/* compiled from: Twttr */
class w extends AsyncTask<Void, Void, Camera> {
    final /* synthetic */ m a;
    private final int b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onCancelled(Object obj) {
        b((Camera) obj);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Camera) obj);
    }

    w(m mVar, int i) {
        this.a = mVar;
        this.b = i;
    }

    protected Camera a(Void... voidArr) {
        if (isCancelled()) {
            return null;
        }
        try {
            Camera open = Camera.open(this.b);
            open.setDisplayOrientation(this.a.e(aa.a(this.a.d)));
            Parameters parameters = open.getParameters();
            int[] a = j.a(parameters.getSupportedPreviewFpsRange());
            if (a != null) {
                parameters.setPreviewFpsRange(a[0], a[1]);
                open.setParameters(parameters);
            }
            return open;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    protected void a(Camera camera) {
        if (this.a.t == this) {
            this.a.t = null;
        }
        this.a.a(camera);
    }

    protected void b(Camera camera) {
        if (this.a.t == this) {
            this.a.t = null;
        }
        if (camera != null) {
            m.c(camera);
        }
    }
}
