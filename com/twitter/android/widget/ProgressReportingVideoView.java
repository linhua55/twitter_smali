package com.twitter.android.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;

/* compiled from: Twttr */
public class ProgressReportingVideoView extends TextureView {
    static final /* synthetic */ boolean a;
    private Surface b;
    private MediaPlayer c;
    private Runnable d;
    private dy e;
    private dz f;
    private int g;
    private boolean h;

    static {
        a = !ProgressReportingVideoView.class.desiredAssertionStatus();
    }

    public ProgressReportingVideoView(Context context) {
        this(context, null, 0);
    }

    public ProgressReportingVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressReportingVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        setSurfaceTextureListener(new ds(this));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setVideoFile(com.twitter.media.model.VideoFile r3) {
        /*
        r2 = this;
        r0 = r2.i();	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r2.c = r0;	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r0 = r2.c;	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r1 = r3.d;	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r1 = r1.getAbsolutePath();	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r0.setDataSource(r1);	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r0 = r2.c;	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
        r0.prepareAsync();	 Catch:{ IllegalStateException -> 0x001c, IOException -> 0x0017 }
    L_0x0016:
        return;
    L_0x0017:
        r0 = move-exception;
    L_0x0018:
        bbn.a(r0);
        goto L_0x0016;
    L_0x001c:
        r0 = move-exception;
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.widget.ProgressReportingVideoView.setVideoFile(com.twitter.media.model.VideoFile):void");
    }

    public void setProgressListener(dy dyVar) {
        this.e = dyVar;
    }

    public void a() {
        if (this.c != null) {
            this.c.pause();
            k();
            this.g = -1;
            this.f = null;
        }
    }

    public void b() {
        k();
        h();
    }

    public void c() {
        if (this.c != null) {
            this.c.start();
        }
    }

    public void d() {
        if (this.c != null) {
            j();
            this.c.start();
        }
    }

    public void a(int i, dz dzVar) {
        if (this.h) {
            k();
            if (!a && this.c == null) {
                throw new AssertionError();
            } else if (this.c.getCurrentPosition() == i) {
                this.g = -1;
                this.f = null;
                if (dzVar != null) {
                    dzVar.a(this);
                    return;
                }
                return;
            } else {
                this.g = i;
                this.f = dzVar;
                this.c.seekTo(i);
                return;
            }
        }
        this.g = i;
        this.f = dzVar;
    }

    public boolean e() {
        return this.h && this.b != null;
    }

    public boolean f() {
        return this.g != -1;
    }

    public boolean g() {
        return this.c != null && this.c.isPlaying();
    }

    public int getCurrentPosition() {
        return this.c == null ? 0 : this.c.getCurrentPosition();
    }

    void h() {
        if (this.c != null) {
            k();
            this.c.release();
            this.c = null;
            this.h = false;
            this.g = -1;
            this.f = null;
        }
        if (this.b != null) {
            this.b.release();
            this.b = null;
        }
    }

    private MediaPlayer i() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setOnErrorListener(new dt(this));
        mediaPlayer.setOnPreparedListener(new du(this, mediaPlayer));
        mediaPlayer.setOnCompletionListener(new dv(this, mediaPlayer));
        mediaPlayer.setOnSeekCompleteListener(new dw(this));
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            this.b = new Surface(surfaceTexture);
            mediaPlayer.setSurface(this.b);
        }
        return mediaPlayer;
    }

    private void j() {
        this.d = new dx(this);
        ViewCompat.postOnAnimation(this, this.d);
    }

    private void k() {
        if (this.d != null) {
            removeCallbacks(this.d);
            this.d = null;
        }
    }
}
