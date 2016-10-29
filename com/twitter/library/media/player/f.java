package com.twitter.library.media.player;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;

/* compiled from: Twttr */
class f implements SurfaceTextureListener {
    final /* synthetic */ InlineVideoView a;

    f(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        InlineVideoView.a(this.a, new Surface(surfaceTexture));
        InlineVideoView.m(this.a);
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Object obj = 1;
        InlineVideoView.f(this.a, i);
        InlineVideoView.g(this.a, i2);
        Object obj2 = InlineVideoView.i(this.a) == 3 ? 1 : null;
        if (!(InlineVideoView.a(this.a) == i && InlineVideoView.b(this.a) == i2)) {
            obj = null;
        }
        if (InlineVideoView.d(this.a) != null && obj2 != null && r1 != null) {
            if (InlineVideoView.f(this.a) != 0) {
                this.a.seekTo(InlineVideoView.f(this.a));
            }
            this.a.start();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (InlineVideoView.n(this.a) != null) {
            InlineVideoView.n(this.a).release();
        }
        InlineVideoView.a(this.a, null);
        if (InlineVideoView.e(this.a) != null) {
            InlineVideoView.e(this.a).hide();
        }
        InlineVideoView.d(this.a, true);
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (InlineVideoView.n(this.a) != null) {
            InlineVideoView.n(this.a).release();
        }
        InlineVideoView.a(this.a, new Surface(surfaceTexture));
        if (InlineVideoView.d(this.a) != null && InlineVideoView.i(this.a) == 3) {
            if (InlineVideoView.f(this.a) != 0) {
                this.a.seekTo(InlineVideoView.f(this.a));
            }
            this.a.start();
        }
    }
}
