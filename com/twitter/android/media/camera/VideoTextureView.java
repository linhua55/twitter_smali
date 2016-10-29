package com.twitter.android.media.camera;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import bbn;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.media.model.VideoFile;
import java.io.IOException;

/* compiled from: Twttr */
public class VideoTextureView extends TextureView implements OnCompletionListener, OnErrorListener, OnPreparedListener, SurfaceTextureListener {
    final MediaPlayer a;
    private final Runnable b;
    private final AudioManager c;
    private int d;
    private int e;
    private boolean f;
    private int g;
    private int h;
    private Surface i;
    private VideoFile j;
    private int k;
    private boolean l;
    private bc m;
    private VideoTextureView n;
    private VideoTextureView o;
    private VideoFile p;

    public VideoTextureView(Context context) {
        this(context, null, 0);
    }

    public VideoTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new bb(this);
        setSurfaceTextureListener(this);
        this.a = new MediaPlayer();
        this.a.setOnPreparedListener(this);
        this.a.setOnCompletionListener(this);
        this.a.setOnErrorListener(this);
        this.c = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    public void onDetachedFromWindow() {
        this.a.release();
        removeCallbacks(this.b);
        super.onDetachedFromWindow();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.i = new Surface(surfaceTexture);
        this.a.setSurface(this.i);
        if (this.d >= 1) {
            h();
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.g = 0;
        this.h = 0;
        if (this.d >= 1) {
            h();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.i.release();
        this.i = null;
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (this.d >= 1) {
            setPhase(2);
            if (this.e == 2) {
                c();
            }
            if (this.n != null) {
                this.n.f();
                this.n = null;
                e();
            }
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        setPhase(1);
        h();
        this.a.seekTo(this.k);
        setPlaybackMode(this.e);
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.d < 2 && !this.f) {
            this.a.seekTo(this.k);
            if (this.e == 1) {
                this.a.start();
            }
        } else if (this.e == 1) {
            setPhase(3);
            if (this.m != null) {
                this.m.h();
            }
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.f = true;
        return false;
    }

    public void a(VideoFile videoFile, int i) {
        Throwable e;
        if (!videoFile.a(this.j) || i != this.k || this.l || this.f) {
            d();
            this.j = videoFile;
            this.k = i;
            try {
                this.a.setDataSource(videoFile.d.getAbsolutePath());
                this.a.prepareAsync();
            } catch (IllegalStateException e2) {
                e = e2;
                bbn.a(e);
                d();
            } catch (IOException e3) {
                e = e3;
                bbn.a(e);
                d();
            }
        }
    }

    public VideoFile getVideoFile() {
        return this.j;
    }

    public void a() {
        if (this.e != 1) {
            setPlaybackMode(1);
        }
    }

    public void b() {
        if (this.e != 2) {
            setPlaybackMode(2);
        }
    }

    public void c() {
        int i = this.e;
        this.e = 0;
        if (this.a.isPlaying()) {
            this.a.pause();
            removeCallbacks(this.b);
            if (this.m != null) {
                this.m.d(i == 2 ? this.k : this.a.getCurrentPosition());
            }
        }
    }

    public void d() {
        removeCallbacks(this.b);
        this.a.reset();
        this.e = 0;
        this.d = 0;
        this.f = false;
        this.j = null;
        this.o = null;
        this.n = null;
        this.p = null;
        this.k = 0;
        this.l = false;
    }

    public void a(VideoFile videoFile, VideoTextureView videoTextureView) {
        this.o = videoTextureView;
        this.p = videoFile;
    }

    public void setPlaybackListener(bc bcVar) {
        this.m = bcVar;
    }

    public void a(VideoTextureView videoTextureView) {
        if (this.d >= 2 || g()) {
            this.n = null;
            videoTextureView.f();
            e();
            return;
        }
        this.n = videoTextureView;
    }

    public void e() {
        setAlpha(1.0f);
        i();
    }

    public void f() {
        setAlpha(0.0f);
    }

    private boolean g() {
        return getAlpha() > 0.0f;
    }

    private void h() {
        float f = 1.0f;
        int videoWidth = this.a.getVideoWidth();
        int videoHeight = this.a.getVideoHeight();
        if (videoWidth != 0 && videoHeight != 0) {
            if (videoWidth != this.g || videoHeight != this.h) {
                this.g = videoWidth;
                this.h = videoHeight;
                float width = (float) getWidth();
                float height = (float) getHeight();
                float f2 = ((float) videoWidth) / width;
                float f3 = ((float) videoHeight) / height;
                if (f2 >= f3) {
                    f2 /= f3;
                } else {
                    float f4 = f3 / f2;
                    f2 = 1.0f;
                    f = f4;
                }
                Matrix matrix = new Matrix();
                matrix.setScale(f2, f, width / 2.0f, height / 2.0f);
                setTransform(matrix);
            }
        }
    }

    private void i() {
        if (this.e == 1 && this.d >= 1 && this.o != null && this.p != null && g()) {
            this.o.a(this.p, 0);
            this.o.b();
            this.o = null;
            this.p = null;
        }
    }

    private void setPlaybackMode(int i) {
        this.e = i;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                j();
                ViewCompat.postOnAnimation(this, this.b);
                this.l = true;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.d < 2) {
                    this.a.setVolume(0.0f, 0.0f);
                    break;
                }
                return;
            default:
                return;
        }
        if (!this.a.isPlaying() && this.d >= 1) {
            this.k = this.a.getCurrentPosition();
            this.a.start();
            i();
        }
    }

    private void setPhase(int i) {
        if (i > this.d) {
            this.d = i;
        }
    }

    private void j() {
        float streamVolume = ((float) this.c.getStreamVolume(3)) / ((float) this.c.getStreamMaxVolume(3));
        this.a.setVolume(streamVolume, streamVolume);
    }
}
