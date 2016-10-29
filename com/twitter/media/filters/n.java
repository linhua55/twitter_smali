package com.twitter.media.filters;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: Twttr */
public interface n {
    EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

    void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
}
