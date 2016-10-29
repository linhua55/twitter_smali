package com.twitter.media.filters;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: Twttr */
class f implements n {
    private a a;

    public f(a aVar) {
        this.a = aVar;
    }

    public EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        return this.a != null ? this.a.b() : null;
    }

    public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
    }
}
