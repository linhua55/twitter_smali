package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.qw;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(14)
@oi
public class zzc extends zzi implements OnAudioFocusChangeListener, OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnVideoSizeChangedListener, SurfaceTextureListener {
    private static final Map<Integer, String> a;
    private final aa b;
    private int c;
    private int d;
    private MediaPlayer e;
    private Uri f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float l;
    private boolean m;
    private boolean n;
    private int o;
    private r p;

    static {
        a = new HashMap();
        a.put(Integer.valueOf(-1004), "MEDIA_ERROR_IO");
        a.put(Integer.valueOf(-1007), "MEDIA_ERROR_MALFORMED");
        a.put(Integer.valueOf(-1010), "MEDIA_ERROR_UNSUPPORTED");
        a.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
        a.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
        a.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
        a.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
        a.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        a.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
        a.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
        a.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
        a.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
        a.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
        a.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
        a.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        a.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzc(Context context, aa aaVar) {
        super(context);
        this.c = 0;
        this.d = 0;
        this.l = 1.0f;
        setSurfaceTextureListener(this);
        this.b = aaVar;
        this.b.a((zzi) this);
    }

    private void a(boolean z) {
        qd.e("AdMediaPlayerView release");
        if (this.e != null) {
            this.e.reset();
            this.e.release();
            this.e = null;
            b(0);
            if (z) {
                this.d = 0;
                c(0);
            }
            j();
        }
    }

    private void b(float f) {
        if (this.e != null) {
            try {
                this.e.setVolume(f, f);
                return;
            } catch (IllegalStateException e) {
                return;
            }
        }
        b.d("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
    }

    private void b(int i) {
        if (i == 3) {
            this.b.c();
        } else if (this.c == 3 && i != 3) {
            this.b.d();
        }
        this.c = i;
    }

    private void c(int i) {
        this.d = i;
    }

    private void g() {
        Throwable e;
        qd.e("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f != null && surfaceTexture != null) {
            a(false);
            try {
                this.e = new MediaPlayer();
                this.e.setOnBufferingUpdateListener(this);
                this.e.setOnCompletionListener(this);
                this.e.setOnErrorListener(this);
                this.e.setOnInfoListener(this);
                this.e.setOnPreparedListener(this);
                this.e.setOnVideoSizeChangedListener(this);
                this.i = 0;
                this.e.setDataSource(getContext(), this.f);
                this.e.setSurface(new Surface(surfaceTexture));
                this.e.setAudioStreamType(3);
                this.e.setScreenOnWhilePlaying(true);
                this.e.prepareAsync();
                b(1);
            } catch (IOException e2) {
                e = e2;
                b.d("Failed to initialize MediaPlayer at " + this.f, e);
                onError(this.e, 1, 0);
            } catch (IllegalArgumentException e3) {
                e = e3;
                b.d("Failed to initialize MediaPlayer at " + this.f, e);
                onError(this.e, 1, 0);
            }
        }
    }

    private void h() {
        if (k() && this.e.getCurrentPosition() > 0 && this.d != 3) {
            qd.e("AdMediaPlayerView nudging MediaPlayer");
            b(0.0f);
            this.e.start();
            int currentPosition = this.e.getCurrentPosition();
            long a = ar.i().a();
            while (k() && this.e.getCurrentPosition() == currentPosition) {
                if (ar.i().a() - a > 250) {
                    break;
                }
            }
            this.e.pause();
            n();
        }
    }

    private void i() {
        AudioManager o = o();
        if (o != null && !this.n) {
            if (o.requestAudioFocus(this, 3, 2) == 1) {
                l();
            } else {
                b.d("AdMediaPlayerView audio focus request failed");
            }
        }
    }

    private void j() {
        qd.e("AdMediaPlayerView abandon audio focus");
        AudioManager o = o();
        if (o != null && this.n) {
            if (o.abandonAudioFocus(this) == 1) {
                this.n = false;
            } else {
                b.d("AdMediaPlayerView abandon audio focus failed");
            }
        }
    }

    private boolean k() {
        return (this.e == null || this.c == -1 || this.c == 0 || this.c == 1) ? false : true;
    }

    private void l() {
        qd.e("AdMediaPlayerView audio focus gained");
        this.n = true;
        n();
    }

    private void m() {
        qd.e("AdMediaPlayerView audio focus lost");
        this.n = false;
        n();
    }

    private void n() {
        if (this.m || !this.n) {
            b(0.0f);
        } else {
            b(this.l);
        }
    }

    private AudioManager o() {
        return (AudioManager) getContext().getSystemService("audio");
    }

    public String a() {
        return "MediaPlayer";
    }

    public void a(float f) {
        this.l = f;
        n();
    }

    public void a(int i) {
        qd.e("AdMediaPlayerView seek " + i);
        if (k()) {
            this.e.seekTo(i);
            this.o = 0;
            return;
        }
        this.o = i;
    }

    public void a(r rVar) {
        this.p = rVar;
    }

    public void b() {
        qd.e("AdMediaPlayerView stop");
        if (this.e != null) {
            this.e.stop();
            this.e.release();
            this.e = null;
            b(0);
            c(0);
            j();
        }
        this.b.b();
    }

    public void c() {
        qd.e("AdMediaPlayerView play");
        if (k()) {
            this.e.start();
            b(3);
            qw.a.post(new h(this));
        }
        c(3);
    }

    public void d() {
        qd.e("AdMediaPlayerView pause");
        if (k() && this.e.isPlaying()) {
            this.e.pause();
            b(4);
            qw.a.post(new i(this));
        }
        c(4);
    }

    public void e() {
        this.m = true;
        n();
    }

    public void f() {
        this.m = false;
        n();
    }

    public int getCurrentPosition() {
        return k() ? this.e.getCurrentPosition() : 0;
    }

    public int getDuration() {
        return k() ? this.e.getDuration() : -1;
    }

    public int getVideoHeight() {
        return this.e != null ? this.e.getVideoHeight() : 0;
    }

    public int getVideoWidth() {
        return this.e != null ? this.e.getVideoWidth() : 0;
    }

    public void onAudioFocusChange(int i) {
        if (i > 0) {
            l();
        } else if (i < 0) {
            m();
        }
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.i = i;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        qd.e("AdMediaPlayerView completion");
        b(5);
        c(5);
        qw.a.post(new d(this));
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = (String) a.get(Integer.valueOf(i));
        String str2 = (String) a.get(Integer.valueOf(i2));
        b.d("AdMediaPlayerView MediaPlayer error: " + str + ":" + str2);
        b(-1);
        c(-1);
        qw.a.post(new e(this, str, str2));
        return true;
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = (String) a.get(Integer.valueOf(i2));
        qd.e("AdMediaPlayerView MediaPlayer info: " + ((String) a.get(Integer.valueOf(i))) + ":" + str);
        return true;
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.g, i);
        int defaultSize2 = getDefaultSize(this.h, i2);
        if (this.g > 0 && this.h > 0) {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            int mode2 = MeasureSpec.getMode(i2);
            defaultSize2 = MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.g * defaultSize2 < this.h * size) {
                    defaultSize = (this.g * defaultSize2) / this.h;
                } else if (this.g * defaultSize2 > this.h * size) {
                    defaultSize2 = (this.h * size) / this.g;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                defaultSize = (this.h * size) / this.g;
                if (mode2 != RtlSpacingHelper.UNDEFINED || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.g * defaultSize2) / this.h;
                if (mode == RtlSpacingHelper.UNDEFINED && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i3 = this.g;
                defaultSize = this.h;
                if (mode2 != RtlSpacingHelper.UNDEFINED || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = i3;
                } else {
                    defaultSize = (this.g * defaultSize2) / this.h;
                }
                if (mode == RtlSpacingHelper.UNDEFINED && r1 > size) {
                    defaultSize2 = (this.h * size) / this.g;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        if (VERSION.SDK_INT == 16) {
            if ((this.j > 0 && this.j != defaultSize) || (this.k > 0 && this.k != defaultSize2)) {
                h();
            }
            this.j = defaultSize;
            this.k = defaultSize2;
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        qd.e("AdMediaPlayerView prepared");
        b(2);
        this.b.a();
        qw.a.post(new c(this));
        this.g = mediaPlayer.getVideoWidth();
        this.h = mediaPlayer.getVideoHeight();
        if (this.o != 0) {
            a(this.o);
        }
        h();
        b.c("AdMediaPlayerView stream dimensions: " + this.g + " x " + this.h);
        if (this.d == 3) {
            c();
        }
        i();
        n();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        qd.e("AdMediaPlayerView surface created");
        g();
        qw.a.post(new f(this));
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        qd.e("AdMediaPlayerView surface destroyed");
        if (this.e != null && this.o == 0) {
            this.o = this.e.getCurrentPosition();
        }
        qw.a.post(new g(this));
        a(true);
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Object obj = 1;
        qd.e("AdMediaPlayerView surface changed");
        Object obj2 = this.d == 3 ? 1 : null;
        if (!(this.g == i && this.h == i2)) {
            obj = null;
        }
        if (this.e != null && obj2 != null && r1 != null) {
            if (this.o != 0) {
                a(this.o);
            }
            c();
        }
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.b.b(this);
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        qd.e("AdMediaPlayerView size changed: " + i + " x " + i2);
        this.g = mediaPlayer.getVideoWidth();
        this.h = mediaPlayer.getVideoHeight();
        if (this.g != 0 && this.h != 0) {
            requestLayout();
        }
    }

    public void setMimeType(String str) {
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.f = uri;
        this.o = 0;
        g();
        requestLayout();
        invalidate();
    }

    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }
}
