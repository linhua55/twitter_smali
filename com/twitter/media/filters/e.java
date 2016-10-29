package com.twitter.media.filters;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: Twttr */
class e implements m {
    public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        egl10.eglChooseConfig(eGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 0, 12352, 4, 12344}, eGLConfigArr, 1, new int[1]);
        return eGLConfigArr[0];
    }
}
