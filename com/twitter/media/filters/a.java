package com.twitter.media.filters;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Twttr */
public class a {
    private EGLSurface a;
    private EGLDisplay b;
    private EGL10 c;
    private EGLContext d;
    private boolean e;
    private boolean f;

    public boolean a() {
        boolean z = true;
        this.c = (EGL10) EGLContext.getEGL();
        if (this.c == null) {
            return false;
        }
        this.b = this.c.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.b == null) {
            return false;
        }
        int[] iArr = new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 0, 12352, 4, 12344};
        this.c.eglInitialize(this.b, new int[2]);
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        this.c.eglChooseConfig(this.b, iArr, eGLConfigArr, 1, new int[1]);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eglCreateContext = this.c.eglCreateContext(this.b, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        if (this.c.eglGetError() != 12288) {
            return false;
        }
        this.d = eglCreateContext;
        this.a = this.c.eglCreatePbufferSurface(this.b, eGLConfig, new int[]{12375, 4, 12374, 4, 12344});
        if (this.a == EGL10.EGL_NO_SURFACE || this.c.eglGetError() != 12288) {
            z = false;
        }
        return z;
    }

    public EGLContext b() {
        return this.d;
    }

    public boolean c() {
        boolean z = false;
        if (this.e) {
            throw new RuntimeException("Unbalanced calls to makeCurrent/unsetCurrent!");
        }
        this.f = false;
        if (this.d.equals(this.c.eglGetCurrentContext())) {
            z = true;
        } else {
            if (this.c.eglMakeCurrent(this.b, this.a, this.a, this.d) && this.c.eglGetError() == 12288) {
                z = true;
            }
            this.f = true;
        }
        if (z) {
            this.e = true;
        }
        return z;
    }

    public boolean d() {
        this.e = false;
        if (!this.f) {
            return true;
        }
        if (this.c.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) && this.c.eglGetError() == 12288) {
            return true;
        }
        return false;
    }

    public void e() {
        this.c.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.c.eglDestroySurface(this.b, this.a);
        this.c.eglDestroyContext(this.b, this.d);
        this.c.eglTerminate(this.b);
        this.d = null;
        this.a = null;
        this.b = null;
        this.c = null;
    }
}
