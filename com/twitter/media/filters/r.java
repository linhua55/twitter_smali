package com.twitter.media.filters;

import javax.microedition.khronos.opengles.GL10;

/* compiled from: Twttr */
class r {
    private static String a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private q f;

    private r() {
    }

    static {
        a = "GLThreadManager";
    }

    public synchronized void a(q qVar) {
        qVar.b = true;
        if (this.f == qVar) {
            this.f = null;
        }
        notifyAll();
    }

    public boolean b(q qVar) {
        if (this.f == qVar || this.f == null) {
            this.f = qVar;
            notifyAll();
            return true;
        }
        c();
        if (this.d) {
            return true;
        }
        if (this.f != null) {
            this.f.i();
        }
        return false;
    }

    public void c(q qVar) {
        if (this.f == qVar) {
            this.f = null;
        }
        notifyAll();
    }

    public synchronized boolean a() {
        return this.e;
    }

    public synchronized boolean b() {
        c();
        return !this.d;
    }

    public synchronized void a(GL10 gl10) {
        boolean z = true;
        synchronized (this) {
            if (!this.c) {
                c();
                String glGetString = gl10.glGetString(7937);
                if (GLTextureView.m < 131072) {
                    this.d = !glGetString.startsWith("Q3Dimension MSM7500 ");
                    notifyAll();
                }
                if (this.d) {
                    z = false;
                }
                this.e = z;
                this.c = true;
            }
        }
    }

    private void c() {
        if (!this.b) {
            if (GLTextureView.m >= 131072) {
                this.d = true;
            }
            this.b = true;
        }
    }
}
