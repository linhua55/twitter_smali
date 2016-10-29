package com.twitter.library.media.player;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.support.v4.media.TransportMediator;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import defpackage.cfb;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
public class InlineVideoView extends TextureView implements MediaPlayerControl {
    private static final String a;
    private boolean A;
    private boolean B;
    private boolean C;
    private final OnVideoSizeChangedListener D;
    private final OnPreparedListener E;
    private final OnCompletionListener F;
    private final OnErrorListener G;
    private final OnBufferingUpdateListener H;
    private final SurfaceTextureListener I;
    private int b;
    private int c;
    private Surface d;
    private MediaPlayer e;
    private int f;
    private int g;
    private MediaController h;
    private OnCompletionListener i;
    private OnPreparedListener j;
    private int k;
    private OnErrorListener l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private Uri s;
    private Map<String, String> t;
    private int u;
    private Context v;
    private String w;
    private AttributeSet x;
    private boolean y;
    private final int[] z;

    static {
        a = InlineVideoView.class.getSimpleName();
    }

    public InlineVideoView(Context context) {
        super(context);
        this.e = null;
        this.q = 0;
        this.r = 0;
        this.z = new int[0];
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = new a(this);
        this.E = new b(this);
        this.F = new c(this);
        this.G = new d(this);
        this.H = new e(this);
        this.I = new f(this);
        f();
    }

    public InlineVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = null;
        this.q = 0;
        this.r = 0;
        this.z = new int[0];
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = new a(this);
        this.E = new b(this);
        this.F = new c(this);
        this.G = new d(this);
        this.H = new e(this);
        this.I = new f(this);
        this.x = attributeSet;
        f();
    }

    public InlineVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = null;
        this.q = 0;
        this.r = 0;
        this.z = new int[0];
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = new a(this);
        this.E = new b(this);
        this.F = new c(this);
        this.G = new d(this);
        this.H = new e(this);
        this.I = new f(this);
        this.x = attributeSet;
        f();
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.b, i);
        int defaultSize2 = getDefaultSize(this.c, i2);
        if (this.b > 0 && this.c > 0) {
            if (this.b * defaultSize2 > this.c * defaultSize) {
                defaultSize2 = (this.c * defaultSize) / this.b;
            } else if (this.b * defaultSize2 < this.c * defaultSize) {
                defaultSize = (this.b * defaultSize2) / this.c;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    private void f() {
        this.v = getContext();
        this.b = 0;
        this.c = 0;
        setSurfaceTextureListener(this.I);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.q = 0;
        this.r = 0;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(InlineVideoView.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(InlineVideoView.class.getName());
    }

    public void setVideoPath(String str) {
        this.w = str;
        setVideoURI(Uri.parse(str));
    }

    public String getPath() {
        return this.w;
    }

    private void setVideoURI(Uri uri) {
        a(uri, null);
    }

    public void a(Uri uri, Map<String, String> map) {
        this.s = uri;
        this.t = map;
        this.m = 0;
        g();
        requestLayout();
        invalidate();
    }

    public void a(boolean z) {
        if (z || !this.y) {
            this.y = true;
            g();
        }
    }

    private void g() {
        Throwable e;
        synchronized (this.z) {
            if (this.s == null || this.d == null) {
                return;
            }
            b(false);
            try {
                this.e = new MediaPlayer();
                this.e.setOnPreparedListener(this.E);
                this.e.setOnVideoSizeChangedListener(this.D);
                this.u = -1;
                this.e.setOnCompletionListener(this.F);
                this.e.setOnErrorListener(this.G);
                this.e.setOnBufferingUpdateListener(this.H);
                this.k = 0;
                this.e.setDataSource(this.v, this.s, this.t);
                this.e.setSurface(this.d);
                setKeepScreenOn(true);
                this.e.setAudioStreamType(3);
                if (this.A) {
                    this.e.setVolume(0.0f, 0.0f);
                } else {
                    j();
                }
                this.e.prepareAsync();
                this.q = 1;
                h();
            } catch (IOException e2) {
                e = e2;
                cfb.b(a, "Unable to open content " + this.s, e);
                this.q = -1;
                this.r = -1;
                this.G.onError(this.e, 1, 0);
            } catch (IllegalArgumentException e3) {
                e = e3;
                cfb.b(a, "Unable to open content " + this.s, e);
                this.q = -1;
                this.r = -1;
                this.G.onError(this.e, 1, 0);
            } catch (IllegalStateException e4) {
                e = e4;
                cfb.b(a, "Unable to open content " + this.s, e);
                this.q = -1;
                this.r = -1;
                this.G.onError(this.e, 1, 0);
            } catch (SecurityException e5) {
                e = e5;
                cfb.b(a, "Unable to open content " + this.s, e);
                this.q = -1;
                this.r = -1;
                this.G.onError(this.e, 1, 0);
            }
        }
    }

    private void h() {
        if (this.e != null && this.h != null) {
            this.h.setMediaPlayer(this);
            this.h.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
            this.h.setEnabled(d());
        }
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.j = onPreparedListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.i = onCompletionListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.l = onErrorListener;
    }

    public void a() {
        b(true);
    }

    private synchronized void b(boolean z) {
        synchronized (this.z) {
            if (this.e != null) {
                try {
                    if (this.e.isPlaying()) {
                        this.e.stop();
                    }
                } catch (IllegalStateException e) {
                }
                this.e.reset();
                this.e.release();
                this.e = null;
                this.q = 0;
                if (z) {
                    this.r = 0;
                    this.w = null;
                }
            }
            setKeepScreenOn(false);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d() && this.h != null) {
            i();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (d() && this.h != null) {
            i();
        }
        return false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = (i == 4 || i == 24 || i == 25 || i == 164 || i == 82 || i == 5 || i == 6) ? false : true;
        if (d() && z && this.h != null) {
            if (i == 79 || i == 85) {
                if (this.e.isPlaying()) {
                    pause();
                    this.h.show();
                    return true;
                }
                start();
                this.h.hide();
                return true;
            } else if (i == TransportMediator.KEYCODE_MEDIA_PLAY) {
                if (this.e.isPlaying()) {
                    return true;
                }
                start();
                this.h.hide();
                return true;
            } else if (i != 86 && i != TransportMediator.KEYCODE_MEDIA_PAUSE) {
                i();
            } else if (!this.e.isPlaying()) {
                return true;
            } else {
                pause();
                this.h.show();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void i() {
        if (this.h.isShowing()) {
            this.h.hide();
        } else {
            this.h.show();
        }
    }

    public void start() {
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        if (d()) {
            this.e.start();
            this.q = 3;
        }
        this.r = 3;
    }

    public void pause() {
        if (d() && this.e.isPlaying()) {
            this.e.pause();
            this.q = 4;
        }
        this.r = 4;
    }

    public boolean b() {
        return this.q == 4;
    }

    public void c() {
        this.B = !this.A;
        setMute(this.A);
        start();
    }

    public int getDuration() {
        if (!d()) {
            this.u = -1;
            return this.u;
        } else if (this.u > 0) {
            return this.u;
        } else {
            this.u = this.e.getDuration();
            return this.u;
        }
    }

    public int getCurrentPosition() {
        try {
            if (!d() || this.e == null) {
                return 0;
            }
            return this.e.getCurrentPosition();
        } catch (Exception e) {
            return -1;
        }
    }

    public void seekTo(int i) {
        if (d()) {
            this.e.seekTo(i);
            this.m = 0;
            return;
        }
        this.m = i;
    }

    public boolean isPlaying() {
        return d() && this.e.isPlaying();
    }

    public int getBufferPercentage() {
        if (this.e != null) {
            return this.k;
        }
        return 0;
    }

    public boolean d() {
        return (this.e == null || this.q == -1 || this.q == 0 || this.q == 1) ? false : true;
    }

    public boolean canPause() {
        return this.n;
    }

    public boolean canSeekBackward() {
        return this.o;
    }

    public boolean canSeekForward() {
        return this.p;
    }

    public int getAudioSessionId() {
        return hashCode() % 10;
    }

    public AttributeSet getAttributes() {
        return this.x;
    }

    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Exception e) {
            Object obj = null;
            boolean z = true;
            try {
                obj = getSurfaceTexture();
                if (obj != null) {
                    obj.release();
                }
            } catch (Throwable e2) {
                Throwable th = e2;
                z = false;
                cfb.b(a, "Failed to release", th);
            }
            cfb.d(a, "Failed to detach from window: " + z + ", " + obj);
        }
    }

    public void setMute(boolean z) {
        this.A = z;
        if (d() && this.B != this.A) {
            if (this.A) {
                this.e.setVolume(0.0f, 0.0f);
            } else {
                j();
                this.e.setVolume(1.0f, 1.0f);
            }
        }
        this.B = this.A;
    }

    private void j() {
        if (!this.C) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            this.v.sendBroadcast(intent);
            this.C = true;
        }
    }
}
