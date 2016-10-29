package com.twitter.media.filters;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Twttr */
class l implements o {
    private l() {
    }

    public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
        EGLSurface eGLSurface = null;
        try {
            eGLSurface = egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
        } catch (Throwable e) {
            Log.e("GLSurfaceView", "eglCreateWindowSurface", e);
        }
        return eGLSurface;
    }

    public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
        egl10.eglDestroySurface(eGLDisplay, eGLSurface);
    }
}
