package com.twitter.library.av;

import android.content.Context;
import android.graphics.SurfaceTexture;
import com.twitter.library.av.playback.AVPlayerAttachment;
import defpackage.bqt;

/* compiled from: Twttr */
public class SmoothPlaybackVideoTextureView extends VideoTextureView {
    z a;

    SmoothPlaybackVideoTextureView(Context context, AVPlayerAttachment aVPlayerAttachment, z zVar, am amVar) {
        super(context, aVPlayerAttachment, amVar);
        a(zVar);
    }

    private void a(z zVar) {
        this.a = zVar;
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        if (surfaceTexture instanceof bqt) {
            this.i = new y(this.g.a().n(), surfaceTexture);
            super.setSurfaceTexture(this.i.a);
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (!(this.i == null || this.i.a == null)) {
            setSurfaceTexture(this.i.a);
        }
        a();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
