package com.twitter.library.av;

import android.content.Context;
import android.graphics.SurfaceTexture;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class CompatVideoTextureView extends VideoTextureView {
    CompatVideoTextureView(Context context, AVPlayerAttachment aVPlayerAttachment, am amVar) {
        super(context, aVPlayerAttachment, amVar);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.i = new y(this.c.a(surfaceTexture), surfaceTexture);
        AVPlayer a = this.g.a();
        a.a(this.i.b);
        if (this.g.e() && !a.u() && a.E()) {
            a.c(false);
            this.g.a(false);
        }
        a();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.i != null) {
            this.g.a().b(this.i.b);
            this.i.b.release();
            this.i = null;
        }
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
