package com.twitter.android.media.camera;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.hardware.Camera.Size;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;

/* compiled from: Twttr */
public class CameraPreviewTextureView extends TextureView implements SurfaceTextureListener {
    private final m a;
    private Size b;

    public CameraPreviewTextureView(Context context, m mVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.a = mVar;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.a.d(Math.min(i, i2));
        this.a.a(surfaceTexture);
        b();
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        b();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.a.b(surfaceTexture);
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void a() {
        b();
    }

    private void b() {
        float f;
        float f2;
        float f3 = 1.0f;
        Size a = this.a.a();
        if (a == null) {
            a = this.b;
            if (a == null) {
                return;
            }
        }
        this.b = a;
        int e = this.a.e(aa.a(getContext()));
        if (e == 0 || e == 180) {
            f = (float) a.width;
            f2 = (float) a.height;
        } else {
            f = (float) a.height;
            f2 = (float) a.width;
        }
        float width = (float) getWidth();
        float height = (float) getHeight();
        f /= width;
        f2 /= height;
        if (f >= f2) {
            f3 = f / f2;
            f2 = 1.0f;
        } else {
            f2 /= f;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f3, f2, width / 2.0f, height / 2.0f);
        setTransform(matrix);
    }
}
