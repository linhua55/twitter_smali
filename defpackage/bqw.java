package defpackage;

import android.opengl.GLSurfaceView.EGLConfigChooser;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* compiled from: Twttr */
/* renamed from: bqw */
class bqw implements EGLConfigChooser {
    private int[] a;

    private bqw() {
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        this.a = new int[1];
        int[] iArr = new int[]{12324, 5, 12323, 6, 12322, 5, 12325, 16, 12352, 4, 12344};
        if (egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, this.a)) {
            int i = this.a[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            if (egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i, this.a)) {
                int i2 = 0;
                while (i2 < eGLConfigArr.length) {
                    if (a(egl10, eGLDisplay, eGLConfigArr[i2], 12324, 0) == 5) {
                        break;
                    }
                    i2++;
                }
                i2 = -1;
                EGLConfig eGLConfig = eGLConfigArr.length > 0 ? eGLConfigArr[i2] : null;
                if (eGLConfig != null) {
                    return eGLConfig;
                }
                throw new IllegalArgumentException("No config chosen");
            }
            throw new IllegalArgumentException("data eglChooseConfig failed");
        }
        throw new IllegalArgumentException("eglChooseConfig failed");
    }

    private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.a)) {
            return this.a[0];
        }
        return i2;
    }
}
