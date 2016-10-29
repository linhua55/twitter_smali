package com.twitter.media.filters;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: Twttr */
public class b implements u {
    private float a;
    private float b;
    private Context c;
    private Uri d;
    private Bitmap e;
    private boolean f;
    private boolean g;
    private int h;
    private int i;
    private float j;
    private int k;
    private Filters l;
    private int m;
    private int n;
    private d o;
    private Handler p;

    public b() {
        this.p = new Handler(Looper.getMainLooper());
        this.g = false;
        this.h = 0;
        b(0.5f);
        c(1.0f);
        this.l = null;
        this.c = null;
    }

    public void a() {
        if (this.k != 0) {
            this.l.a(this.k);
            this.k = 0;
            this.g = false;
        }
    }

    public void a(Context context, Filters filters) {
        this.c = context;
        this.l = filters;
    }

    public void a(Bitmap bitmap, boolean z) {
        if (!bitmap.equals(this.e) || z != this.f) {
            a(null, bitmap, z);
        }
    }

    private void a(Uri uri, Bitmap bitmap, boolean z) {
        this.f = z;
        this.d = uri;
        this.e = bitmap;
        this.g = false;
    }

    public void a(int i) {
        this.h = i;
    }

    public void b(int i) {
        this.i = i;
    }

    public void a(float f) {
        this.j = f;
    }

    public void a(GL10 gl10) {
        if (this.l != null) {
            if (this.g) {
                this.l.a(this.h, this.k, c(), d(), this.i, this.j);
                this.p.post(new c(this));
                return;
            }
            if (this.k != 0) {
                this.l.a(this.k);
                this.k = 0;
            }
            e();
        }
    }

    public void a(GL10 gl10, int i, int i2) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16384);
        GLES20.glViewport(0, 0, i, i2);
        this.m = i;
        this.n = i2;
    }

    public void a(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16384);
        gl10.glDisable(2929);
        gl10.glDisable(2884);
    }

    public int b() {
        return this.m;
    }

    public float c() {
        return this.a;
    }

    public void b(float f) {
        this.a = f;
    }

    public float d() {
        return this.b;
    }

    public void c(float f) {
        this.b = f;
    }

    public void a(d dVar) {
        this.o = dVar;
    }

    private void e() {
        if (this.d != null || this.e != null) {
            if (this.k != 0) {
                this.l.a(this.k);
            }
            if (this.d != null) {
                this.k = this.l.a(this.d, 0, 0, this.f, 0, 0, 0, 0);
            } else {
                this.k = this.l.a(this.e, this.f);
            }
            if (this.k > 0) {
                this.g = true;
            }
        }
    }
}
