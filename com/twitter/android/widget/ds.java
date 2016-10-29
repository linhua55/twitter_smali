package com.twitter.android.widget;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;

/* compiled from: Twttr */
class ds implements SurfaceTextureListener {
    final /* synthetic */ ProgressReportingVideoView a;

    ds(ProgressReportingVideoView progressReportingVideoView) {
        this.a = progressReportingVideoView;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.a.c != null) {
            this.a.b = new Surface(surfaceTexture);
            this.a.c.setSurface(this.a.b);
            if (this.a.h && this.a.e != null) {
                this.a.e.c();
            }
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.a.h();
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
