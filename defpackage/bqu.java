package defpackage;

import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.support.annotation.VisibleForTesting;
import bbn;
import com.twitter.config.d;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Twttr */
/* renamed from: bqu */
public class bqu {
    private static final int[] b;
    @VisibleForTesting
    final ArrayList<Integer> a;

    public bqu() {
        this.a = new ArrayList();
    }

    static {
        b = new int[]{12375, 1, 12374, 1, 12344};
    }

    public static boolean a() {
        return d.a("android_media_playback_use_created_surface_textures");
    }

    public bqt b() {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        bqw bqw = new bqw();
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        try {
            EGLSurface eglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eglGetDisplay, bqw.chooseConfig(egl10, eglGetDisplay), b);
            if (eglCreatePbufferSurface == null || eglCreatePbufferSurface == EGL10.EGL_NO_SURFACE) {
                bbn.a(new RuntimeException("createWindowSurface failed " + GLUtils.getEGLErrorString(egl10.eglGetError())));
                return null;
            }
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            int i = iArr[0];
            this.a.add(Integer.valueOf(i));
            GLES20.glBindTexture(36197, i);
            bqt bqt = new bqt(i);
            GLES20.glBindTexture(36197, 0);
            GLES20.glFlush();
            return bqt;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    public void c() {
        int[] d = d();
        if (d != null) {
            GLES20.glDeleteTextures(d.length, d, 0);
        }
    }

    @VisibleForTesting
    protected int[] d() {
        if (this.a.isEmpty()) {
            return null;
        }
        int[] iArr = new int[this.a.size()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = ((Integer) this.a.get(i)).intValue();
        }
        this.a.clear();
        return iArr;
    }
}
