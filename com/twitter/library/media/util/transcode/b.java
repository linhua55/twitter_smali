package com.twitter.library.media.util.transcode;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.view.Surface;
import cfb;
import com.google.android.exoplayer.hls.HlsChunkSource;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Twttr */
class b implements OnFrameAvailableListener {
    private final SurfaceTexture a;
    private final Surface b;
    private final c c;
    private EGL10 d;
    private EGLDisplay e;
    private EGLContext f;
    private EGLSurface g;
    private final Object h;
    private boolean i;

    b() {
        this(0, 0);
    }

    b(int i, int i2) {
        this.h = new Object();
        if (i > 0 && i2 > 0) {
            a(i, i2);
            d();
        }
        this.c = new c();
        this.c.b();
        cfb.b("OutputSurface", String.format("textureID = %d", new Object[]{Integer.valueOf(this.c.a())}));
        this.a = new SurfaceTexture(this.c.a());
        this.a.setOnFrameAvailableListener(this);
        this.b = new Surface(this.a);
    }

    @TargetApi(17)
    private void a(int i, int i2) {
        this.d = (EGL10) EGLContext.getEGL();
        this.e = this.d.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.d.eglInitialize(this.e, null)) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (this.d.eglChooseConfig(this.e, new int[]{12324, 8, 12323, 8, 12322, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
                this.f = this.d.eglCreateContext(this.e, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                a(this.d, "eglCreateContext");
                if (this.f == null) {
                    throw new RuntimeException("null context");
                }
                this.g = this.d.eglCreatePbufferSurface(this.e, eGLConfigArr[0], new int[]{12375, i, 12374, i2, 12344});
                a(this.d, "eglCreatePbufferSurface");
                if (this.g == null) {
                    throw new RuntimeException("surface was null");
                }
                return;
            }
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        throw new RuntimeException("unable to initialize EGL10");
    }

    public void a() {
        if (this.d != null) {
            if (this.d.eglGetCurrentContext().equals(this.f)) {
                this.d.eglMakeCurrent(this.e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            }
            this.d.eglDestroySurface(this.e, this.g);
            this.d.eglDestroyContext(this.e, this.f);
        }
        this.b.release();
        this.e = null;
        this.f = null;
        this.g = null;
        this.d = null;
    }

    private void d() {
        if (this.d == null) {
            throw new RuntimeException("not configured for makeCurrent");
        }
        a(this.d, "before makeCurrent");
        if (!this.d.eglMakeCurrent(this.e, this.g, this.g, this.f)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public Surface b() {
        return this.b;
    }

    public void a(String str) {
        this.c.a(str);
    }

    public void c() throws TranscoderException, InterruptedException {
        synchronized (this.h) {
            do {
                if (this.i) {
                    this.i = false;
                } else {
                    this.h.wait(HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
                }
            } while (this.i);
            throw new TranscoderException(false, "Surface frame wait timed out", null);
        }
        this.c.b("before updateTexImage");
        this.a.updateTexImage();
    }

    public void a(int i) {
        this.c.a(this.a, i);
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        cfb.b("OutputSurface", "new frame available");
        synchronized (this.h) {
            if (this.i) {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
            this.i = true;
            this.h.notifyAll();
        }
    }

    private static void a(EGL10 egl10, String str) {
        Object obj = null;
        while (true) {
            int eglGetError = egl10.eglGetError();
            if (eglGetError == 12288) {
                break;
            }
            cfb.e("OutputSurface", str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
            obj = 1;
        }
        if (obj != null) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }
}
