package com.twitter.library.av;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import bcu;
import com.twitter.android.mx;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.bd;
import com.twitter.media.ui.image.s;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.c;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.d;
import com.twitter.util.j;
import defpackage.bcx;
import defpackage.bqk;
import java.lang.ref.WeakReference;
import rx.o;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class VideoPlayerView extends ViewGroup implements OnScrollChangedListener, s, s {
    protected final h a;
    protected final Mode b;
    protected final Point c;
    boolean d;
    h e;
    av f;
    private final aw h;
    private final Handler i;
    private final VideoViewContainer j;
    private WeakReference<s> k;
    private final AVPlayerAttachment l;
    private final AVPlayer m;
    private final Rect n;
    private final ScaleType o;
    private Runnable p;
    private final bc q;

    /* compiled from: Twttr */
    public enum Mode {
        TIMELINE_AUTOPLAY,
        FULLSCREEN,
        CARD_CANVAS,
        FULLSCREEN_CARD_CANVAS,
        MOMENTS,
        FULLSCREEN_GALLERY,
        TIMELINE_AUTOPLAY_MOMENTS,
        FULLSCREEN_PERISCOPE,
        WATCH_MODE,
        TIMELINE_AUTOPLAY_PERISCOPE,
        FULLSCREEN_LIVE,
        EVENT_TIMELINE_HEADER
    }

    public VideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        this(context, aVPlayerAttachment, new aw(), mode);
    }

    public VideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, aw awVar, Mode mode) {
        this(context, aVPlayerAttachment, new az().a(context, aVPlayerAttachment), awVar, mode);
    }

    public VideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, VideoViewContainer videoViewContainer, aw awVar, Mode mode) {
        this(context, aVPlayerAttachment, videoViewContainer, awVar, mode, ai.a(), new bc());
    }

    public VideoPlayerView(Context context, AVPlayerAttachment aVPlayerAttachment, VideoViewContainer videoViewContainer, aw awVar, Mode mode, ai aiVar, bc bcVar) {
        super(context);
        this.c = new Point(0, 0);
        this.i = new Handler(Looper.getMainLooper());
        this.k = new WeakReference(null);
        this.n = new Rect();
        setId(bcx.video_player_view);
        setWillNotDraw(false);
        this.q = bcVar;
        this.l = aVPlayerAttachment;
        this.m = aVPlayerAttachment.a();
        this.b = mode;
        this.o = a(this.b);
        this.j = videoViewContainer;
        this.a = this.m.I().a(context, getEmbeddedChromeMode());
        this.a.a(this.l);
        this.h = awVar;
        if (d()) {
            this.f = s();
            if (!(this.b == Mode.TIMELINE_AUTOPLAY || this.b == Mode.TIMELINE_AUTOPLAY_MOMENTS || this.b == Mode.TIMELINE_AUTOPLAY_PERISCOPE)) {
                this.f.a();
            }
        }
        boolean b = b(this.b);
        if (!b) {
            addView(this.j);
        }
        if (this.f != null) {
            addView(this.f.getView(), new LayoutParams(-1, -1));
        }
        View view = this.a.getView();
        if (view != null) {
            addView(view);
        }
        c();
        if (b) {
            setOnClickListener(new ap(this));
        }
        this.k = new WeakReference(null);
    }

    private boolean b(Mode mode) {
        return Mode.FULLSCREEN == mode || Mode.FULLSCREEN_CARD_CANVAS == mode || Mode.FULLSCREEN_GALLERY == mode || Mode.FULLSCREEN_PERISCOPE == mode || Mode.WATCH_MODE == mode || Mode.FULLSCREEN_LIVE == mode;
    }

    protected ScaleType a(Mode mode) {
        switch (ar.a[mode.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return ScaleType.b;
            default:
                return ScaleType.a;
        }
    }

    public void c() {
        this.l.a((s) this);
    }

    protected boolean d() {
        return this.b == Mode.TIMELINE_AUTOPLAY || this.b == Mode.MOMENTS || this.b == Mode.TIMELINE_AUTOPLAY_MOMENTS || this.b == Mode.FULLSCREEN_GALLERY || this.b == Mode.WATCH_MODE || this.b == Mode.TIMELINE_AUTOPLAY_PERISCOPE || this.b == Mode.EVENT_TIMELINE_HEADER;
    }

    protected boolean g() {
        return this.b == Mode.TIMELINE_AUTOPLAY || this.b == Mode.MOMENTS || this.b == Mode.WATCH_MODE || this.b == Mode.TIMELINE_AUTOPLAY_PERISCOPE || this.b == Mode.EVENT_TIMELINE_HEADER;
    }

    public String getCurrentMediaSource() {
        AVMedia D;
        if (this.m != null) {
            D = this.m.D();
        } else {
            D = null;
        }
        if (D != null) {
            return D.a();
        }
        return null;
    }

    protected int getEmbeddedChromeMode() {
        int c = this.l.h().c().c();
        switch (ar.a[this.b.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 3;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 0;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 7;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (2 == c || 3 == c) {
                    return 4;
                }
                return 1;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case ControlMessage.CONTROL_BAN /*8*/:
                return 5;
            case mx.TwitterEditText_messageSize /*9*/:
                return 8;
            default:
                return 0;
        }
    }

    public void setExternalChromeView(h hVar) {
        this.e = hVar;
        if (this.e != null) {
            this.l.g();
        }
    }

    public void setAVPlayerListener(s sVar) {
        this.k = new WeakReference(sVar);
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
        measureChildren(i, i2);
    }

    public h getChromeView() {
        return this.a;
    }

    public boolean a() {
        if (!this.d) {
            return false;
        }
        boolean f = this.a.f();
        if (this.e == null) {
            return f;
        }
        this.e.f();
        return f;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect a = a(i, i2, i3, i4);
        this.j.layout(a.left, a.top, a.right, a.bottom);
        this.a.layout(0, 0, i3 - i, i4 - i2);
        if (this.f != null) {
            this.f.getView().layout(0, 0, i3 - i, i4 - i2);
        }
    }

    protected Rect a(int i, int i2, int i3, int i4) {
        if (this.o == ScaleType.b) {
            return new Rect(0, 0, i3 - i, i4 - i2);
        }
        return this.j.a(0, 0, i3 - i, i4 - i2);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this);
        this.m.c(this.m.u());
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (4 == keyEvent.getKeyCode()) {
            i();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private av s() {
        av a = this.h.a(getContext());
        a.setScaleType(this.o);
        ImageSpec l = this.m.e().c().l();
        if (l != null) {
            a.setImageSpec(l);
        }
        if (this.b == Mode.TIMELINE_AUTOPLAY || this.b == Mode.TIMELINE_AUTOPLAY_PERISCOPE || l == null) {
            a.setPlaceholderDrawable(new ColorDrawable(getResources().getColor(bcu.placeholder_bg)));
        }
        if (this.b == Mode.WATCH_MODE) {
            a.setPlaceholderDrawable(new ColorDrawable(getResources().getColor(bcu.gray_opacity_30)));
        }
        return a;
    }

    public void m() {
        if (this.f == null) {
            this.f = s();
        }
        this.f.a();
    }

    public au n() {
        this.l.a(this.m.x());
        return this.l.h();
    }

    public au o() {
        this.l.m();
        if (this.f != null) {
            this.f.getView().setVisibility(0);
        }
        return this.l.h();
    }

    public au p() {
        this.l.m();
        return this.l.h();
    }

    public au q() {
        this.l.n();
        return this.l.h();
    }

    public Point getVideoSize() {
        return this.c;
    }

    public void a(int i, int i2) {
        this.c.set(i, i2);
        this.j.a(i, i2);
        this.a.l();
        if (this.e != null) {
            this.e.l();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(i, i2);
        }
    }

    public void a(int i, int i2, boolean z, boolean z2) {
        if (i2 > 0 && i > 0) {
            a(i, i2);
        }
        AVMedia D = this.m.D();
        this.a.a(D);
        if (this.e != null) {
            this.e.a(D);
        }
        if (z2) {
            this.a.h();
            if (this.e != null) {
                this.e.h();
            }
        }
        if (z && this.m.E()) {
            this.l.a(false);
        }
        if (VERSION.SDK_INT < 17) {
            t();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(i, i2, z, z2);
        }
    }

    public void e() {
        this.a.e();
        if (this.e != null) {
            this.e.e();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.e();
        }
    }

    public void a(boolean z) {
        this.a.b_(z);
        if (this.e != null) {
            this.e.b_(z);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(z);
        }
    }

    public void a(bd bdVar) {
        this.a.a(bdVar);
        if (this.e != null) {
            this.e.a(bdVar);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(bdVar);
        }
    }

    public void l() {
        if (this.f != null) {
            this.f.getView().setVisibility(0);
        }
        if (this.j != null) {
            this.j.setVisibility(4);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.l();
        }
    }

    public void a(aa aaVar) {
        if (bqk.c != this.m.L()) {
            this.j.a(aaVar);
        }
    }

    public void a(double d) {
        if (bqk.c == this.m.L()) {
            this.j.a(d);
        }
    }

    public void f() {
        AVMedia D = this.m.D();
        boolean d = D != null ? D.d() : true;
        this.a.a_(d);
        if (this.e != null) {
            this.e.a_(d);
        }
        this.j.setKeepScreenOn(false);
        if (g()) {
            if (this.f == null) {
                m();
            }
            this.f.getView().setAlpha(1.0f);
            this.f.getView().setVisibility(0);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.f();
        }
    }

    public void a(int i, String str) {
        this.a.a(getContext(), str);
        if (this.e != null) {
            this.e.a(getContext(), str);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(i, str);
        }
    }

    public void a(c cVar) {
        String a = as.a(getResources(), cVar);
        this.a.a(getContext(), a);
        if (this.e != null) {
            this.e.a(getContext(), a);
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(cVar);
        }
    }

    public void a(PlayerStartType playerStartType) {
        this.i.removeCallbacks(this.p);
        this.a.a(playerStartType);
        if (this.e != null) {
            this.e.a(playerStartType);
        }
        this.j.requestLayout();
        this.j.invalidate();
        if (bqk.c != this.m.L()) {
            this.j.setKeepScreenOn(true);
        }
        if (playerStartType != PlayerStartType.d) {
            t();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.a(playerStartType);
        }
    }

    public void j() {
        this.j.setKeepScreenOn(false);
        this.a.a();
        if (this.e != null) {
            this.e.a();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.j();
        }
    }

    public void k() {
        if (this.f != null) {
            this.f.getView().setAlpha(1.0f);
            this.f.getView().setVisibility(0);
        }
        this.a.g();
        if (this.e != null) {
            this.e.g();
        }
    }

    public void h() {
        if (!this.d || !this.j.e()) {
            this.a.j();
            if (this.e != null) {
                this.e.j();
            }
            this.j.c();
            if (this.j.getParent() == null) {
                addView(this.j, 0);
            }
            if (this.c.x > 0 && this.c.y > 0) {
                this.j.a(this.c.x, this.c.y);
            }
            if (this.f != null) {
                if (this.m.u() || this.m.y()) {
                    t();
                } else {
                    this.f.getView().setVisibility(0);
                }
            }
            this.d = true;
            this.j.setKeepScreenOn(this.m.u());
            s sVar = (s) this.k.get();
            if (sVar != null) {
                sVar.h();
            }
            if (b()) {
                this.l.a(getVisibilityPercentage());
            }
        }
    }

    public void i() {
        this.a.i();
        if (this.e != null) {
            this.e.i();
        }
        this.d = false;
        this.j.a();
        this.j.setKeepScreenOn(false);
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.i();
        }
    }

    public void b(int i, int i2) {
        this.i.removeCallbacks(this.p);
        if (i == 701) {
            this.p = new aq(this);
            this.i.postDelayed(this.p, 400);
        } else if (i == 702) {
            this.a.d();
            if (this.e != null) {
                this.e.d();
            }
        } else if (i == 3) {
            this.a.b();
            if (this.e != null) {
                this.e.b();
            }
            t();
        }
        s sVar = (s) this.k.get();
        if (sVar != null) {
            sVar.b(i, i2);
        }
    }

    public void onScrollChanged() {
        if (b()) {
            this.l.a(getVisibilityPercentage());
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (b()) {
            this.l.a(getVisibilityPercentage());
        }
    }

    public boolean b() {
        return this.b != Mode.TIMELINE_AUTOPLAY_MOMENTS;
    }

    public float getVisibilityPercentage() {
        return this.q.a(this, this.n);
    }

    private void t() {
        if (this.f != null) {
            d.a(this.f.getView());
        }
        if (this.j != null) {
            this.j.setVisibility(0);
        }
    }

    public o<Bitmap> getThumbnailDrawable() {
        if (this.f != null) {
            return this.f.getThumbnailBitmap();
        }
        j.a("Getting the thumbnail before mVideoThumbnailPresenter is set is not yet implemented");
        return o.c();
    }

    public boolean r() {
        return this.f != null && (this.f.getView() instanceof VideoThumbnailView) && ((VideoThumbnailView) this.f.getView()).c();
    }
}
