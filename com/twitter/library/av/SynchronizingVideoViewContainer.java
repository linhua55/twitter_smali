package com.twitter.library.av;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import bbn;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class SynchronizingVideoViewContainer extends VideoViewContainer {
    int a;

    SynchronizingVideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar) {
        this(context, aVPlayerAttachment, bbVar, new bc());
    }

    SynchronizingVideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar, bc bcVar) {
        super(context, aVPlayerAttachment, bbVar, bcVar);
        this.a = 0;
    }

    public void c() {
        this.a = 0;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        if (this.a == 0) {
            b();
            f();
            if (this.b instanceof VideoTextureView) {
                ((VideoTextureView) this.b).b();
            }
            this.a = 1;
        }
        super.onDraw(canvas);
    }

    protected void b() {
        super.b();
        if (this.b instanceof SmoothPlaybackVideoTextureView) {
            bbn.a(new RuntimeException("SynchronizingVideoViewContainer should not deal with TextureViews that share SurfaceTextures."));
        }
    }

    protected void a(SurfaceTexture surfaceTexture) {
    }

    protected boolean d() {
        return false;
    }

    public boolean a() {
        return true;
    }
}
