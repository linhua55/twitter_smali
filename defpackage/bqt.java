package defpackage;

import android.graphics.SurfaceTexture;

/* compiled from: Twttr */
/* renamed from: bqt */
public class bqt extends SurfaceTexture {
    public bqt(int i) {
        super(i);
    }

    public void attachToGLContext(int i) {
        a(i);
    }

    public void detachFromGLContext() {
        a();
    }

    private boolean a(int i) {
        try {
            super.attachToGLContext(i);
            return true;
        } catch (RuntimeException e) {
            if (a()) {
                return a(i);
            }
            return false;
        }
    }

    private boolean a() {
        try {
            super.detachFromGLContext();
            return true;
        } catch (RuntimeException e) {
            return false;
        }
    }
}
