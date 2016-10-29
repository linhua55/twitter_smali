package com.twitter.library.av.playback;

import android.content.Context;
import android.media.MediaCodec.CryptoException;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer$Listener;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer$EventListener;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer$EventListener;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.twitter.android.mx;
import com.twitter.library.av.playback.AVMediaPlayer.PlayerState;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.network.an;
import com.twitter.model.av.AVMedia;
import defpackage.cfb;
import java.lang.ref.WeakReference;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class a extends bg implements ExoPlayer$Listener, MediaCodecAudioTrackRenderer$EventListener, MediaCodecVideoTrackRenderer$EventListener, j {
    private final ExoPlayer b;
    private final Handler n;
    private TrackRenderer o;
    private TrackRenderer p;
    private int q;
    private int r;
    private int s;
    private WeakReference<Surface> t;
    private Exception u;
    private boolean v;
    private volatile long w;

    abstract void a(Context context, String str, AVMedia aVMedia);

    a(Handler handler, w wVar, ExoPlayer exoPlayer) {
        super(wVar, handler);
        this.q = 1;
        this.t = new WeakReference(null);
        this.w = 0;
        this.n = new Handler(Looper.getMainLooper());
        this.b = exoPlayer;
        this.b.addListener(new c(this, this.n));
    }

    static int a() {
        return 1000;
    }

    public w b() {
        return this.c;
    }

    protected long c() {
        if (this.w <= 0) {
            this.w = this.b.getDuration();
        }
        return this.w;
    }

    protected long d() {
        return this.b.getCurrentPosition();
    }

    public int e() {
        return 0;
    }

    public String f() {
        return this.u != null ? this.u.getMessage() : null;
    }

    protected boolean g() {
        return this.b != null;
    }

    protected void a(Context context) {
        a(context, an.a(context).e.toString(), this.g);
    }

    protected void h() {
        this.b.prepare(new TrackRenderer[]{this.o, this.p});
        Surface l = l();
        if (l != null) {
            this.b.sendMessage(this.o, 1, l);
        }
    }

    protected void a(boolean z, Exception exception) {
        String format = String.format("Unable to open content %s %s", new Object[]{this.h, exception.getMessage()});
        cfb.c("AVMediaExoPlayer", format, exception);
        this.q = 1;
        this.u = exception;
        a(z, 1, format);
    }

    protected void i() {
        b(PlayerState.f);
        this.b.setPlayWhenReady(true);
    }

    protected void j() {
        b(PlayerState.g);
        this.b.setPlayWhenReady(false);
    }

    protected void a(long j) {
        this.b.seekTo(j);
    }

    protected void k() {
        this.b.removeListener(this);
        this.m.post(new b(this));
    }

    public void a(Surface surface) {
        if (this.t.get() != surface) {
            cfb.b("AVMediaExoPlayer", "setSurface(Surface)" + surface);
            if (this.o != null) {
                this.t.clear();
                this.b.sendMessage(this.o, 1, surface);
                return;
            }
            this.t = new WeakReference(surface);
        }
    }

    public Surface l() {
        return (Surface) this.t.get();
    }

    public void a(float f) {
        if (this.p != null) {
            this.b.sendMessage(this.p, 1, Float.valueOf(f));
        }
    }

    public void onPlayerStateChanged(boolean z, int i) {
        boolean z2 = true;
        int i2 = this.q;
        this.q = i;
        if (i2 == 2 && (i == 3 || i == 4)) {
            a(PlayerState.e);
            if (this.d != null) {
                this.d.a(this.r, this.s, false, false);
            }
        }
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(PlayerState.c);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a(PlayerState.d);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                if (F() == PlayerState.f || E() == PlayerState.f) {
                    this.b.setPlayWhenReady(true);
                }
                if (!(i2 == 3 || this.d == null || E() == PlayerState.a)) {
                    this.d.b(701, 0);
                }
                c(false);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (!z) {
                    if (F() == PlayerState.f) {
                        if (this.j != PlayerStartType.a) {
                            z2 = false;
                        }
                        b(z2);
                        break;
                    }
                }
                a(PlayerState.f);
                a(this.j);
                if (this.v) {
                    this.d.b(3, 0);
                    this.v = false;
                }
                if (this.d != null) {
                    this.d.a(this.j);
                }
                this.j = PlayerStartType.b;
                b(false);
                break;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                a(PlayerState.h);
                c(true);
                if (this.e != null) {
                    this.e.onCompletion(null);
                    break;
                }
                break;
        }
        if (i2 == 3 && i != 3 && this.d != null) {
            this.d.b(702, 0);
        }
    }

    protected void m() {
    }

    protected void n() {
        if (this.b != null) {
            this.b.seekTo(0);
        }
    }

    public void onPlayWhenReadyCommitted() {
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        a(true, exoPlaybackException);
    }

    protected Handler o() {
        return this.n;
    }

    public void a(TrackRenderer trackRenderer) {
        this.o = trackRenderer;
    }

    public void b(TrackRenderer trackRenderer) {
        this.p = trackRenderer;
    }

    public void onDroppedFrames(int i, long j) {
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.r = i;
        this.s = i2;
        if (this.d != null && this.r > 0 && this.s > 0) {
            this.d.a(i, i2);
        }
    }

    public void onDrawnToSurface(Surface surface) {
        if (E() != PlayerState.f) {
            this.v = true;
        } else if (this.d != null) {
            this.d.b(3, 0);
        }
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        a(false, decoderInitializationException);
    }

    public void onCryptoError(CryptoException cryptoException) {
        a(false, cryptoException);
    }

    public void onDecoderInitialized(String str, long j, long j2) {
    }

    public void onAudioTrackInitializationError(InitializationException initializationException) {
        a(false, initializationException);
    }

    public void onAudioTrackWriteError(WriteException writeException) {
        a(false, writeException);
    }

    public void onAudioTrackUnderrun(int i, long j, long j2) {
    }

    public void a(Throwable th) {
        if (r()) {
            s();
        }
        onPlayerError(new ExoPlaybackException("Allocation Failure"));
    }
}
