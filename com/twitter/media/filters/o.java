package com.twitter.media.filters;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Twttr */
public interface o {
    EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

    void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
}
