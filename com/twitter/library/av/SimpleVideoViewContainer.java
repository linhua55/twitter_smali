package com.twitter.library.av;

import android.content.Context;
import android.graphics.SurfaceTexture;
import bbn;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import defpackage.bqt;

/* compiled from: Twttr */
public class SimpleVideoViewContainer extends VideoViewContainer {
    private final j a;

    public SimpleVideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar) {
        this(context, aVPlayerAttachment, bbVar, j.a);
    }

    SimpleVideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar, j jVar) {
        super(context, aVPlayerAttachment, bbVar);
        this.a = jVar;
    }

    protected void a(SurfaceTexture surfaceTexture) {
        if (surfaceTexture instanceof bqt) {
            surfaceTexture.detachFromGLContext();
        } else {
            bbn.a(new RuntimeException("prepareSurfaceTexture called with non-SafeSurfaceTexture"));
        }
    }

    protected void b() {
        super.b();
        if (this.b instanceof CompatVideoTextureView) {
            bbn.a(new RuntimeException("SimpleVideoViewContainer should not deal with TextureViews that don't share SurfaceTextures."));
        }
    }

    public void c() {
        b();
        if (this.b instanceof VideoTextureView) {
            ((VideoTextureView) this.b).b();
        }
    }

    protected boolean d() {
        return true;
    }

    protected SurfaceTexture getSurfaceTexture() {
        if (!i.a(getContext(), this.a)) {
            SurfaceTexture surfaceTexture = super.getSurfaceTexture();
            if (surfaceTexture != null) {
                return surfaceTexture;
            }
        }
        AVPlayer a = this.e.a();
        return a.F().a((z) this, a);
    }

    public boolean a() {
        if (e()) {
            g();
            removeView(this.b);
        }
        return true;
    }
}
