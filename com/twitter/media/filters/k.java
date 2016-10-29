package com.twitter.media.filters;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: Twttr */
class k implements n {
    final /* synthetic */ GLTextureView a;
    private int b;

    private k(GLTextureView gLTextureView) {
        this.a = gLTextureView;
        this.b = 12440;
    }

    public EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        int[] iArr = new int[]{this.b, this.a.k, 12344};
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        if (this.a.k == 0) {
            iArr = null;
        }
        return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
    }

    public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        if (!egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
            Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
            p.a("eglDestroyContex", egl10.eglGetError());
        }
    }
}
