package com.twitter.library.av;

import android.content.Context;
import android.graphics.Matrix;
import android.view.View;
import com.twitter.library.av.playback.AVPlayerAttachment;
import defpackage.bqu;

/* compiled from: Twttr */
public class au extends ba {
    private final VideoTextureView a;

    au(Context context, AVPlayerAttachment aVPlayerAttachment, z zVar) {
        this(context, aVPlayerAttachment, zVar, new am());
    }

    au(Context context, AVPlayerAttachment aVPlayerAttachment, z zVar, am amVar) {
        this.a = c() ? new SmoothPlaybackVideoTextureView(context, aVPlayerAttachment, zVar, amVar) : new CompatVideoTextureView(context, aVPlayerAttachment, amVar);
        Matrix matrix = new Matrix();
        matrix.setScale(1.000001f, 1.000001f);
        this.a.setTransform(matrix);
    }

    private boolean c() {
        return bqu.a();
    }

    public View a() {
        return this.a;
    }

    protected an b() {
        return this.a;
    }

    public void a(boolean z) {
        this.a.setKeepScreenOn(z);
    }
}
