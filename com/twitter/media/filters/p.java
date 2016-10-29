package com.twitter.media.filters;

import android.opengl.GLDebugHelper;
import android.util.Log;
import java.io.Writer;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;

/* compiled from: Twttr */
class p {
    EGL10 a;
    EGLDisplay b;
    EGLSurface c;
    EGLConfig d;
    EGLContext e;
    private WeakReference<GLTextureView> f;

    public p(WeakReference<GLTextureView> weakReference) {
        this.f = weakReference;
    }

    public void a() {
        this.a = (EGL10) EGLContext.getEGL();
        this.b = this.a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.b == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("eglGetDisplay failed");
        }
        if (this.a.eglInitialize(this.b, new int[2])) {
            GLTextureView gLTextureView = (GLTextureView) this.f.get();
            if (gLTextureView == null) {
                this.d = null;
                this.e = null;
            } else {
                this.d = gLTextureView.f.a(this.a, this.b);
                this.e = gLTextureView.g.a(this.a, this.b, this.d);
            }
            if (this.e == null || this.e == EGL10.EGL_NO_CONTEXT) {
                this.e = null;
                a("createContext");
            }
            this.c = null;
            return;
        }
        throw new RuntimeException("eglInitialize failed");
    }

    public boolean b() {
        if (this.a == null) {
            throw new RuntimeException("egl not initialized");
        } else if (this.b == null) {
            throw new RuntimeException("eglDisplay not initialized");
        } else if (this.d == null) {
            throw new RuntimeException("mEglConfig not initialized");
        } else {
            g();
            GLTextureView gLTextureView = (GLTextureView) this.f.get();
            if (gLTextureView != null) {
                this.c = gLTextureView.h.a(this.a, this.b, this.d, gLTextureView.getSurfaceTexture());
            } else {
                this.c = null;
            }
            if (this.c == null || this.c == EGL10.EGL_NO_SURFACE) {
                if (this.a.eglGetError() == 12299) {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            } else if (this.a.eglMakeCurrent(this.b, this.c, this.c, this.e)) {
                return true;
            } else {
                a("EGLHelper", "eglMakeCurrent", this.a.eglGetError());
                return false;
            }
        }
    }

    GL c() {
        GL gl = this.e.getGL();
        GLTextureView gLTextureView = (GLTextureView) this.f.get();
        if (gLTextureView == null) {
            return gl;
        }
        if (gLTextureView.i != null) {
            gl = gLTextureView.i.a(gl);
        }
        if ((gLTextureView.j & 3) == 0) {
            return gl;
        }
        Writer tVar;
        int i = 0;
        if ((gLTextureView.j & 1) != 0) {
            i = 1;
        }
        if ((gLTextureView.j & 2) != 0) {
            tVar = new t();
        } else {
            tVar = null;
        }
        return GLDebugHelper.wrap(gl, i, tVar);
    }

    public int d() {
        if (this.a.eglSwapBuffers(this.b, this.c)) {
            return 12288;
        }
        return this.a.eglGetError();
    }

    public void e() {
        g();
    }

    private void g() {
        if (this.c != null && this.c != EGL10.EGL_NO_SURFACE) {
            this.a.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            GLTextureView gLTextureView = (GLTextureView) this.f.get();
            if (gLTextureView != null) {
                gLTextureView.h.a(this.a, this.b, this.c);
            }
            this.c = null;
        }
    }

    public void f() {
        if (this.e != null) {
            GLTextureView gLTextureView = (GLTextureView) this.f.get();
            if (gLTextureView != null) {
                gLTextureView.g.a(this.a, this.b, this.e);
            }
            this.e = null;
        }
        if (this.b != null) {
            this.a.eglTerminate(this.b);
            this.b = null;
        }
    }

    private void a(String str) {
        a(str, this.a.eglGetError());
    }

    public static void a(String str, int i) {
        throw new RuntimeException(b(str, i));
    }

    public static void a(String str, String str2, int i) {
        Log.w(str, b(str2, i));
    }

    public static String b(String str, int i) {
        return str + " failed: " + GLTextureView.a(i);
    }
}
