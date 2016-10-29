package com.twitter.library.av.playback;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.VisibleForTesting;
import android.view.Surface;
import cfb;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class x extends bg implements OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnSeekCompleteListener, OnVideoSizeChangedListener {
    MediaPlayer b;
    private WeakReference<Surface> n;
    private final int[] o;
    private int p;
    private String q;
    private int r;
    private volatile long s;

    public x(w wVar, Handler handler) {
        super(wVar, handler);
        this.n = new WeakReference(null);
        this.o = new int[0];
        this.s = 0;
    }

    protected long c() {
        if (this.s <= 0) {
            this.s = (long) this.b.getDuration();
        }
        return this.s;
    }

    protected long d() {
        return (long) this.b.getCurrentPosition();
    }

    public int e() {
        return this.p;
    }

    public String f() {
        return this.q;
    }

    protected boolean g() {
        return this.b != null;
    }

    public void a(Surface surface) {
        if (this.n.get() != surface) {
            this.n = new WeakReference(surface);
            if (this.b != null) {
                this.b.setSurface(surface);
                a();
            }
        }
    }

    protected void m() {
        a(this.j);
        if (this.d != null) {
            this.d.a(this.j);
        }
    }

    protected void n() {
        if (this.b != null) {
            this.b.seekTo(0);
            this.b.start();
        }
    }

    private void a() {
        if (E() == AVMediaPlayer$PlayerState.PAUSED) {
            this.b.seekTo(this.b.getCurrentPosition());
        }
    }

    protected synchronized void k() {
        synchronized (this.o) {
            if (this.b != null) {
                a(null);
                try {
                    if (this.b.isPlaying()) {
                        this.b.stop();
                    }
                } catch (IllegalStateException e) {
                }
                this.m.post(new y(this, this.b));
                this.b = null;
            }
        }
    }

    private void a(x xVar) {
        if (this.b != null) {
            this.b.setOnPreparedListener(xVar);
            this.b.setOnVideoSizeChangedListener(xVar);
            this.b.setOnCompletionListener(xVar);
            this.b.setOnErrorListener(xVar);
            this.b.setOnInfoListener(xVar);
            this.b.setOnSeekCompleteListener(xVar);
        }
    }

    public void a(float f) {
        if (this.b != null) {
            this.b.setVolume(f, f);
        }
    }

    protected void i() {
        this.b.start();
    }

    protected void j() {
        this.b.pause();
    }

    protected void a(long j) {
        this.b.seekTo((int) j);
    }

    protected void a(Context context) {
        Exception e;
        if (context != null) {
            synchronized (this.o) {
                if (this.b != null) {
                    k();
                }
                try {
                    this.b = h();
                    a(this);
                    b(context);
                    if (this.n.get() != null) {
                        this.b.setSurface((Surface) this.n.get());
                    }
                    this.b.setAudioStreamType(3);
                    this.b.prepareAsync();
                    a(AVMediaPlayer$PlayerState.PREPARING);
                } catch (IOException e2) {
                    e = e2;
                    a(e);
                    a(null);
                    this.b = null;
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    a(e);
                    a(null);
                    this.b = null;
                } catch (IllegalStateException e4) {
                    e = e4;
                    a(e);
                    a(null);
                    this.b = null;
                } catch (SecurityException e5) {
                    e = e5;
                    a(e);
                    a(null);
                    this.b = null;
                } catch (InterruptedException e6) {
                    e = e6;
                    a(e);
                    a(null);
                    this.b = null;
                }
            }
        }
    }

    private MediaPlayer h() throws InterruptedException {
        return (MediaPlayer) new z(this).a(this.m, 10);
    }

    @VisibleForTesting
    void b(Context context) throws IOException {
        Object obj = (this.i == null || this.i.isEmpty()) ? null : 1;
        if (obj != null) {
            this.b.setDataSource(context, Uri.parse(this.h), this.i);
        } else {
            this.b.setDataSource(context, Uri.parse(this.h));
        }
    }

    private void a(Exception exception) {
        String format = String.format("Unable to open content %s %s", new Object[]{this.h, exception.getMessage()});
        cfb.e("AVMediaPlayerCompat", format);
        a(AVMediaPlayer$PlayerState.ERROR);
        b(AVMediaPlayer$PlayerState.ERROR);
        a(this.b, 1, 0, format);
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (this.d != null) {
            this.d.a(i, i2);
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        a(AVMediaPlayer$PlayerState.PREPARED);
        if (this.d != null) {
            this.d.a(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight(), false, false);
        }
        if (E() != AVMediaPlayer$PlayerState.PLAYING && F() == AVMediaPlayer$PlayerState.PLAYING) {
            b(false);
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        a(AVMediaPlayer$PlayerState.PLAYBACK_COMPLETED);
        c(true);
        if (this.e != null) {
            this.e.onCompletion(this.b);
        }
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        ac H = H();
        if (H != null) {
            if (i == 701) {
                H.c();
            } else if (i == 702) {
                H.a();
            }
        }
        if (this.d == null) {
            return false;
        }
        this.d.b(i, i2);
        return true;
    }

    public void onSeekComplete(MediaPlayer mediaPlayer) {
        ac H = H();
        if (H != null && G()) {
            H.a();
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return a(mediaPlayer, i, 1, null);
    }

    public boolean a(MediaPlayer mediaPlayer, int i, int i2, String str) {
        this.r = i2;
        if (str == null) {
            str = String.format("Error: %d, %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)});
        }
        cfb.e("AVMediaPlayerCompat", str);
        a(false, i, str);
        if (this.d != null) {
            this.d.a(i, str);
        }
        this.p = i;
        this.q = str;
        return true;
    }
}
