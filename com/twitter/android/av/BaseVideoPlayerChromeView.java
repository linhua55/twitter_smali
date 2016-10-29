package com.twitter.android.av;

import android.content.Context;
import android.preference.PreferenceManager;
import android.support.annotation.ColorInt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.twitter.config.AppConfig;
import com.twitter.library.av.control.VideoControlView;
import com.twitter.library.av.control.f;
import com.twitter.library.av.control.g;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import defpackage.bsa;

/* compiled from: Twttr */
public abstract class BaseVideoPlayerChromeView extends RelativeLayout implements OnClickListener, bo, bt, f, h {
    protected AVPlayerAttachment a;
    protected VideoControlView b;
    protected boolean c;
    protected View d;
    protected bq e;
    protected boolean f;
    protected boolean g;
    protected bsa h;
    protected boolean i;
    protected final g j;
    protected final bj k;
    private final bu l;
    private f m;

    public BaseVideoPlayerChromeView(Context context) {
        this(context, null);
    }

    public BaseVideoPlayerChromeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new g(), new bu(), new bj(context));
    }

    public BaseVideoPlayerChromeView(Context context, AttributeSet attributeSet, g gVar) {
        this(context, attributeSet, gVar, new bu(), new bj(context));
    }

    protected BaseVideoPlayerChromeView(Context context, AttributeSet attributeSet, g gVar, bu buVar, bj bjVar) {
        super(context, attributeSet);
        this.i = true;
        this.j = gVar;
        this.l = buVar;
        this.k = bjVar;
        setupInternalViews(context);
    }

    protected boolean a(View view) {
        return a(view, (ViewGroup) this);
    }

    protected boolean a(View view, ViewGroup viewGroup) {
        return view != null && view.getParent() == viewGroup;
    }

    protected AVPlayer getAVPlayer() {
        AVPlayerAttachment aVPlayerAttachment = this.a;
        return aVPlayerAttachment != null ? aVPlayerAttachment.a() : null;
    }

    public View getView() {
        return this;
    }

    public View getControls() {
        return this.b;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        setWillNotDraw(false);
        this.a = aVPlayerAttachment;
        this.k.a((bo) this);
        k();
        if (this.b != null) {
            this.b.a(aVPlayerAttachment != null ? aVPlayerAttachment.a() : null);
            if (!this.i) {
                this.b.f();
            }
        }
        if (this.e != null) {
            this.e.b(this);
        }
        if (aVPlayerAttachment != null && C()) {
            this.e = this.l.a(getContext(), aVPlayerAttachment.a());
            this.e.a(this);
        }
    }

    protected void k() {
        if (this.d != null && this.d.getParent() == null) {
            addView(this.d);
        }
        if (this.b != null && this.b.getParent() == null) {
            addView(this.b);
        }
    }

    protected void setupInternalViews(Context context) {
        if (this.b == null) {
            this.b = a(context);
            if (this.b != null) {
                this.b.setListener(this);
                m();
            }
        }
        if (this.d == null) {
            this.d = b(context);
            if (this.d != null) {
                this.d.setOnClickListener(this);
                this.d.setVisibility(8);
            }
        }
        if (this.h == null) {
            this.h = n();
        }
    }

    protected void m() {
        if (this.b != null) {
            this.b.setIsFullScreenToggleAllowed(D());
        }
    }

    protected bsa n() {
        return new bsa();
    }

    protected VideoControlView a(Context context) {
        return this.j.a(context);
    }

    protected View b(Context context) {
        return LayoutInflater.from(context).inflate(2130968644, this, false);
    }

    View getViewMoreButton() {
        return this.d;
    }

    protected void o() {
        if (this.i && this.b != null) {
            this.b.f();
        }
    }

    protected void p() {
        if (this.i && this.b != null) {
            this.b.g();
        }
        if (this.c) {
            this.k.a();
        } else {
            v();
        }
    }

    public void q() {
        o();
    }

    public void h() {
        p();
    }

    public void g() {
    }

    public void a(PlayerStartType playerStartType) {
        boolean z = false;
        u();
        this.c = false;
        A();
        if (this.b != null) {
            this.b.b();
        }
        if (this.e != null) {
            this.e.a(playerStartType);
        }
        v();
        if (AppConfig.m().p()) {
            z = PreferenceManager.getDefaultSharedPreferences(getContext()).getBoolean("video_disable_control_hiding", false);
        }
        if (!r()) {
            return;
        }
        if (playerStartType == PlayerStartType.d || r0) {
            p();
        }
    }

    protected boolean r() {
        return true;
    }

    public void a() {
    }

    public void b() {
    }

    public void a_(boolean z) {
        this.f = true;
        this.c = true;
        u();
        if (this.b != null) {
            this.b.a(z);
        }
        p();
        B();
    }

    public void i() {
        A();
        u();
        o();
    }

    public void j() {
    }

    public void a(boolean z, long j) {
        if (z && this.c) {
            this.c = false;
            A();
        } else {
            v();
        }
        if (this.m != null) {
            this.m.a(z, j);
        }
    }

    public void a(Context context, String str) {
        A();
        u();
        if (this.b != null) {
            this.b.a(context, str);
        }
    }

    public void a(int i, long j) {
        boolean z = true;
        if (i <= 1) {
            z = false;
        }
        this.g = z;
    }

    public void onClick(View view) {
        if (view.equals(this.d)) {
            this.e.a(getContext());
        }
    }

    public void setShouldShowControls(boolean z) {
        this.i = z;
        if (z) {
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(4);
        }
    }

    public void setControlsListener(f fVar) {
        this.m = fVar;
    }

    public void a(AVMedia aVMedia) {
        boolean z = true;
        this.f = true;
        u();
        if (this.b != null) {
            VideoControlView videoControlView = this.b;
            if (!(aVMedia == null || aVMedia.d())) {
                z = false;
            }
            videoControlView.b(z);
        }
    }

    public void e() {
        this.f = false;
        AVPlayer aVPlayer = getAVPlayer();
        if (aVPlayer != null && aVPlayer.H()) {
            t();
        }
    }

    public void l() {
        requestLayout();
        if (this.b != null) {
            this.b.a();
        }
    }

    public boolean f() {
        if (!this.f || this.b == null) {
            return false;
        }
        if (!this.b.i()) {
            p();
        } else if (s()) {
            o();
        }
        return true;
    }

    public boolean s() {
        return !this.c;
    }

    public void d() {
        u();
    }

    public void c() {
        t();
    }

    public void t() {
        if (this.h != null) {
            this.h.a(this, getContext());
        }
        o();
    }

    public void u() {
        if (this.h != null) {
            this.h.a(this);
        }
    }

    protected void v() {
        this.k.a(4000);
    }

    public void w() {
        v();
        if (this.m != null) {
            this.m.w();
        }
    }

    public void x() {
        if (this.m != null) {
            this.m.x();
        }
    }

    public void y() {
        v();
        if (this.m != null) {
            this.m.y();
        }
    }

    public void z() {
        this.k.a();
        if (this.m != null) {
            this.m.z();
        }
    }

    public void b_(boolean z) {
        if (z) {
            p();
        }
    }

    protected void A() {
        setBackgroundColor(0);
        if (this.d != null) {
            this.d.setVisibility(4);
        }
    }

    protected void B() {
        setBackgroundColor(getPlaylistCompleteOverlayBackgroundColor());
        if (this.g && this.d != null) {
            this.d.setVisibility(0);
            if (this.e != null) {
                this.e.c();
            }
        }
    }

    public void a(bd bdVar) {
        if (this.b != null) {
            this.b.a(bdVar);
        }
    }

    @ColorInt
    public int getPlaylistCompleteOverlayBackgroundColor() {
        return getContext().getResources().getColor(2131886185);
    }

    protected boolean C() {
        return true;
    }

    protected boolean D() {
        return false;
    }

    public void setIsFullscreen(boolean z) {
        if (this.b != null) {
            this.b.c(z);
        }
    }
}
