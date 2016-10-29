package com.twitter.android.widget;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.support.v4.media.TransportMediator;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.ProgressBar;
import com.twitter.library.media.util.b;
import com.twitter.library.media.util.d;
import com.twitter.media.model.MediaDescriptor;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: Twttr */
public class MediaPlayerView extends SurfaceView implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnInfoListener, OnPreparedListener, OnVideoSizeChangedListener, Callback, MediaPlayerControl {
    private MediaPlayer a;
    private cf b;
    private final SurfaceHolder c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private ArrayList<MediaDescriptor> i;
    private int j;
    private boolean k;
    private boolean l;
    private ch m;
    private ProgressBar n;
    private ImageButton o;
    private View p;
    private final b q;
    private final d r;
    private float s;
    private final OnClickListener t;

    public MediaPlayerView(Context context) {
        this(context, null, 0);
    }

    public MediaPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = new cc(this);
        this.t = new cd(this);
        this.g = 0;
        SurfaceHolder holder = getHolder();
        holder.setType(3);
        holder.addCallback(this);
        this.c = holder;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.q = b.a(context);
        this.s = b.a(100, 100);
    }

    void a() {
        this.s = b.a(100, 50);
        if (this.a != null) {
            this.a.setVolume(this.s, this.s);
        }
    }

    void b() {
        this.s = b.a(100, 100);
        if (this.a != null) {
            this.a.setVolume(this.s, this.s);
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = this.d;
        int i4 = this.e;
        int defaultSize = getDefaultSize(i3, i);
        int defaultSize2 = getDefaultSize(i4, i2);
        if (i3 > 0 && i4 > 0) {
            int i5 = i3 * defaultSize2;
            int i6 = i4 * defaultSize;
            if (i5 > i6) {
                defaultSize2 = (defaultSize * i4) / i3;
            } else if (i5 < i6) {
                defaultSize = i5 / i4;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        c();
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        f();
    }

    public void c() {
        if (!g() && this.i != null && getVisibility() == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.a = mediaPlayer;
            MediaDescriptor mediaDescriptor = (MediaDescriptor) this.i.get(this.j);
            try {
                mediaPlayer.setDataSource(getContext(), Uri.parse(mediaDescriptor.a));
                mediaPlayer.setOnInfoListener(this);
                mediaPlayer.setOnBufferingUpdateListener(this);
                mediaPlayer.setOnCompletionListener(this);
                mediaPlayer.setOnErrorListener(this);
                mediaPlayer.setOnPreparedListener(this);
                mediaPlayer.setOnVideoSizeChangedListener(this);
                mediaPlayer.setDisplay(this.c);
                mediaPlayer.setAudioStreamType(3);
                mediaPlayer.setLooping(this.k);
                mediaPlayer.setVolume(this.s, this.s);
                mediaPlayer.prepareAsync();
                if (mediaDescriptor.b) {
                    cf ciVar;
                    if (this.l) {
                        ciVar = new ci(this.m);
                    } else {
                        ciVar = new cg(this, getContext());
                    }
                    ciVar.a(this);
                    ciVar.setMediaPlayer(this);
                    this.b = ciVar;
                    return;
                }
                this.b = null;
            } catch (IOException e) {
                f();
                a(1);
            }
        }
    }

    private void a(int i) {
        if (this.m != null) {
            this.m.c(i);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.b != null) {
            this.b.a();
            j();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.b != null) {
            j();
        }
        return false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = (i == 4 || i == 24 || i == 25 || i == 164 || i == 82 || i == 5 || i == 6) ? false : true;
        if (z && this.b != null) {
            if (!g()) {
                j();
            } else if (i == 79 || i == 85) {
                if (this.a.isPlaying()) {
                    pause();
                    d();
                    return true;
                }
                start();
                e();
                return true;
            } else if (i == TransportMediator.KEYCODE_MEDIA_PLAY) {
                if (this.a.isPlaying()) {
                    return true;
                }
                start();
                e();
                return true;
            } else if (i == 86 || i == TransportMediator.KEYCODE_MEDIA_PAUSE) {
                if (!this.a.isPlaying()) {
                    return true;
                }
                pause();
                d();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    private boolean g() {
        return b(8);
    }

    public void d() {
        if (this.b != null) {
            this.b.show(3000);
        }
    }

    public void e() {
        if (this.b != null) {
            this.b.hide();
        }
    }

    private void h() {
        if (this.o != null && this.p != null) {
            this.o.setVisibility(8);
            this.p.setVisibility(8);
        }
    }

    private void i() {
        if (this.o != null && this.p != null) {
            this.o.setVisibility(0);
            this.p.setVisibility(0);
        }
    }

    private void j() {
        if (!b(1)) {
            return;
        }
        if (this.b.isShowing()) {
            e();
        } else {
            d();
        }
    }

    private boolean b(int i) {
        return (this.g & i) != 0;
    }

    private void setState(int i) {
        this.g |= i;
    }

    private void c(int i) {
        this.g &= i ^ -1;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        setState(5);
        start();
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        setState(2);
        if (i > 0 && i2 > 0) {
            mediaPlayer.setScreenOnWhilePlaying(true);
        }
        this.d = i;
        this.e = i2;
        start();
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 100) {
            a(3);
        } else {
            a(2);
        }
        f();
        return true;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        this.j++;
        if (this.j < this.i.size()) {
            f();
            this.g = 0;
            if (this.n != null) {
                this.n.setVisibility(0);
            }
            c();
            return;
        }
        e();
        i();
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 801) {
            c(4);
        } else if (i == 701) {
            if (this.n != null) {
                this.n.setVisibility(0);
            }
        } else if (i == 702 && this.n != null) {
            this.n.setVisibility(8);
        }
        return false;
    }

    public void start() {
        if (!b(1) || !b(2)) {
            return;
        }
        if (this.q.a(this.r)) {
            setState(8);
            this.m.ae_();
            this.c.setFixedSize(this.d, this.e);
            if (this.h > 0) {
                this.a.seekTo(this.h);
                this.h = 0;
            }
            this.a.start();
            if (this.n != null) {
                this.n.setVisibility(8);
            }
            d();
            return;
        }
        a(4);
    }

    public void f() {
        if (!b(16)) {
            if (this.a != null) {
                this.a.release();
                this.a = null;
            }
            this.g = 16;
        }
        this.q.b(this.r);
    }

    public void pause() {
        if (this.a != null) {
            this.a.pause();
            this.q.b(this.r);
        }
    }

    public int getDuration() {
        if (this.a != null) {
            return this.a.getDuration();
        }
        return 0;
    }

    public int getCurrentPosition() {
        if (this.a != null) {
            return this.a.getCurrentPosition();
        }
        return 0;
    }

    public void seekTo(int i) {
        if (this.a != null) {
            this.a.seekTo(i);
        }
    }

    public boolean isPlaying() {
        return this.a != null && this.a.isPlaying();
    }

    public int getAudioSessionId() {
        if (this.a != null) {
            return this.a.getAudioSessionId();
        }
        return 0;
    }

    public int getBufferPercentage() {
        if (this.a != null) {
            return this.f;
        }
        return 0;
    }

    public boolean canPause() {
        return this.a != null;
    }

    public boolean canSeekBackward() {
        return this.a != null && b(4);
    }

    public boolean canSeekForward() {
        return this.a != null && b(4);
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f = i;
    }

    public void setStartPosition(int i) {
        this.h = i;
    }

    public void a(ArrayList<MediaDescriptor> arrayList, int i, int i2) {
        this.i = arrayList;
        this.j = i;
        this.h = i2;
    }

    public void setIsLooping(boolean z) {
        this.k = z;
    }

    public void setMediaControllerListener(ch chVar) {
        this.m = chVar;
    }

    public void setProgressBar(ProgressBar progressBar) {
        this.n = progressBar;
    }

    public void setUseSimplePlayPauseControls(boolean z) {
        this.l = z;
    }

    public void a(ImageButton imageButton, View view) {
        this.o = imageButton;
        this.p = view;
        this.o.setOnClickListener(this.t);
        this.p.setOnClickListener(this.t);
    }
}
