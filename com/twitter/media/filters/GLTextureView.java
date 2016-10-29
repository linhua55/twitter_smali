package com.twitter.media.filters;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class GLTextureView extends TextureView implements SurfaceTextureListener {
    private static final r a;
    private static int m;
    private final WeakReference<GLTextureView> b;
    private q c;
    private u d;
    private boolean e;
    private m f;
    private n g;
    private o h;
    private s i;
    private int j;
    private int k;
    private boolean l;

    public GLTextureView(Context context) {
        super(context);
        this.b = new WeakReference(this);
        a(context);
    }

    public GLTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new WeakReference(this);
        a(context);
    }

    protected void finalize() throws Throwable {
        try {
            if (this.c != null) {
                this.c.h();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    private void a(Context context) {
        setSurfaceTextureListener(this);
        addOnLayoutChangeListener(new h(this));
        m = ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion;
    }

    public void setGLWrapper(s sVar) {
        this.i = sVar;
    }

    public void setDebugFlags(int i) {
        this.j = i;
    }

    public int getDebugFlags() {
        return this.j;
    }

    public void setPreserveEGLContextOnPause(boolean z) {
        this.l = z;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.l;
    }

    public void setRenderer(u uVar) {
        a();
        if (this.f == null) {
            this.f = new v(this, true);
        }
        if (this.g == null) {
            this.g = new k();
        }
        if (this.h == null) {
            this.h = new l();
        }
        this.d = uVar;
        this.c = new q(this.b);
        this.c.start();
    }

    public void setEGLContextFactory(n nVar) {
        a();
        this.g = nVar;
    }

    public void setEGLWindowSurfaceFactory(o oVar) {
        a();
        this.h = oVar;
    }

    public void setEGLConfigChooser(m mVar) {
        a();
        this.f = mVar;
    }

    public void setEGLConfigChooser(boolean z) {
        setEGLConfigChooser(new v(this, z));
    }

    public void setEGLContextClientVersion(int i) {
        a();
        this.k = i;
    }

    public void setRenderMode(int i) {
        this.c.a(i);
    }

    public int getRenderMode() {
        return this.c.b();
    }

    public void b() {
        this.c.c();
    }

    public void a(SurfaceTexture surfaceTexture) {
        this.c.d();
    }

    public void b(SurfaceTexture surfaceTexture) {
        this.c.e();
    }

    public void a(SurfaceTexture surfaceTexture, int i, int i2, int i3) {
        this.c.a(i2, i3);
    }

    public void c() {
        this.c.f();
    }

    public void d() {
        this.c.g();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e && this.d != null) {
            int b;
            if (this.c != null) {
                b = this.c.b();
            } else {
                b = 1;
            }
            this.c = new q(this.b);
            if (b != 1) {
                this.c.a(b);
            }
            this.c.start();
        }
        this.e = false;
    }

    protected void onDetachedFromWindow() {
        if (this.c != null) {
            this.c.h();
        }
        this.e = true;
        super.onDetachedFromWindow();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        a(surfaceTexture);
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        a(surfaceTexture, 0, i, i2);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        b(surfaceTexture);
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        b();
    }

    private void a() {
        if (this.c != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    private static String a(int i) {
        switch (i) {
            case 12288:
                return "EGL_SUCCESS";
            case 12289:
                return "EGL_NOT_INITIALIZED";
            case 12290:
                return "EGL_BAD_ACCESS";
            case 12291:
                return "EGL_BAD_ALLOC";
            case 12292:
                return "EGL_BAD_ATTRIBUTE";
            case 12293:
                return "EGL_BAD_CONFIG";
            case 12294:
                return "EGL_BAD_CONTEXT";
            case 12295:
                return "EGL_BAD_CURRENT_SURFACE";
            case 12296:
                return "EGL_BAD_DISPLAY";
            case 12297:
                return "EGL_BAD_MATCH";
            case 12298:
                return "EGL_BAD_NATIVE_PIXMAP";
            case 12299:
                return "EGL_BAD_NATIVE_WINDOW";
            case 12300:
                return "EGL_BAD_PARAMETER";
            case 12301:
                return "EGL_BAD_SURFACE";
            case 12302:
                return "EGL_CONTEXT_LOST";
            default:
                return "0x" + Integer.toHexString(i);
        }
    }

    static {
        a = new r();
    }
}
