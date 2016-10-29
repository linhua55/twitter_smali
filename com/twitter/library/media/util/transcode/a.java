package com.twitter.library.media.util.transcode;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import cfb;

@TargetApi(18)
/* compiled from: Twttr */
public class a {
    private EGLDisplay a;
    private EGLContext b;
    private EGLSurface c;
    private Surface d;

    public a(Surface surface) {
        this.d = surface;
        d();
    }

    private void d() {
        this.a = EGL14.eglGetDisplay(0);
        if (this.a == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (EGL14.eglInitialize(this.a, iArr, 0, iArr, 1)) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (EGL14.eglChooseConfig(this.a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0)) {
                this.b = EGL14.eglCreateContext(this.a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                a("eglCreateContext");
                if (this.b == null) {
                    throw new RuntimeException("null context");
                }
                this.c = EGL14.eglCreateWindowSurface(this.a, eGLConfigArr[0], this.d, new int[]{12344}, 0);
                a("eglCreateWindowSurface");
                if (this.c == null) {
                    throw new RuntimeException("surface was null");
                }
                return;
            }
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        this.a = null;
        throw new RuntimeException("unable to initialize EGL14");
    }

    public void a() {
        if (EGL14.eglGetCurrentContext().equals(this.b)) {
            EGL14.eglMakeCurrent(this.a, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(this.a, this.c);
        EGL14.eglDestroyContext(this.a, this.b);
        this.d.release();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public void b() {
        if (!EGL14.eglMakeCurrent(this.a, this.c, this.c, this.b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public boolean c() {
        return EGL14.eglSwapBuffers(this.a, this.c);
    }

    public void a(long j) {
        EGLExt.eglPresentationTimeANDROID(this.a, this.c, j);
    }

    private void a(String str) {
        Object obj = null;
        while (true) {
            int eglGetError = EGL14.eglGetError();
            if (eglGetError == 12288) {
                break;
            }
            cfb.e("InputSurface", str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
            obj = 1;
        }
        if (obj != null) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }
}
