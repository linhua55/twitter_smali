package com.twitter.library.av.control;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import bcx;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.util.d;
import defpackage.bcw;
import defpackage.bcy;
import defpackage.bdc;

/* compiled from: Twttr */
public class VideoControlView extends RelativeLayout implements OnClickListener, b {
    AVPlayer a;
    private final View b;
    private final View c;
    private final View d;
    private final ImageButton e;
    private final ImageButton f;
    private final View g;
    private boolean h;
    private boolean i;
    private final a j;
    private f k;
    private final c l;

    VideoControlView(Context context, boolean z) {
        this(context, null, z);
    }

    VideoControlView(Context context, AVPlayer aVPlayer, boolean z) {
        super(context);
        this.i = false;
        setWillNotDraw(false);
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.l = d.b();
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.c = layoutInflater.inflate(bcy.av_media_controller, null);
        this.b = this.c.findViewById(bcx.av_media_controller_controls);
        this.j = new a(this.c, this);
        this.e = (ImageButton) this.c.findViewById(bcx.pause);
        this.e.requestFocus();
        this.e.setOnClickListener(this);
        this.f = (ImageButton) this.c.findViewById(bcx.fullscreen);
        this.f.setOnClickListener(this);
        this.g = this.c.findViewById(bcx.skip);
        this.g.setOnClickListener(this);
        this.d = layoutInflater.inflate(bcy.av_error_msg, null);
        addView(this.d);
        addView(this.c);
        a(aVPlayer);
    }

    public void a(AVPlayer aVPlayer) {
        if (aVPlayer != this.a) {
            this.a = aVPlayer;
            this.j.a(aVPlayer);
            j();
            k();
        }
    }

    private void j() {
        if (e()) {
            this.d.setVisibility(8);
            g();
        }
    }

    private void k() {
        this.i = this.a != null ? this.a.x() : false;
        if (this.a != null && this.a.u()) {
            this.i = false;
            if (i()) {
                l();
                o();
            }
        }
        if (this.i) {
            a(this.h);
        }
    }

    public void a() {
        requestLayout();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int right = getRight() - getLeft();
        int bottom = getBottom() - getTop();
        this.c.layout(0, 0, right, bottom);
        this.d.layout(0, 0, right, bottom);
    }

    public void a(boolean z) {
        this.h = z;
        this.i = true;
        o();
    }

    public void b(boolean z) {
        this.h = z;
        if (this.a != null && this.a.y()) {
            this.j.b(this.a.z());
        }
    }

    public void setIsFullScreenToggleAllowed(boolean z) {
        this.f.setVisibility(z ? 0 : 8);
    }

    public void b() {
        this.i = false;
        if (i()) {
            o();
            l();
        }
    }

    private void l() {
        AVMedia D = this.a != null ? this.a.D() : null;
        if (D != null) {
            this.h = D.d();
            g();
        }
    }

    public void a(Context context, String str) {
        Runnable b = b(context, str);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            this.j.a(b);
        } else {
            b.run();
        }
    }

    private Runnable b(Context context, String str) {
        return new e(this, str, context);
    }

    public boolean e() {
        return this.d.getParent() != null && this.d.getVisibility() == 0;
    }

    public void a(boolean z, long j) {
        if (z && this.i) {
            this.i = false;
            if (i()) {
                l();
            }
        }
        o();
        if (this.k != null) {
            this.k.a(z, j);
        }
    }

    public void f() {
        d.a(this.b);
    }

    public void d() {
        if (this.k != null) {
            this.k.z();
        }
    }

    public void g() {
        this.e.requestFocus();
        m();
        d.b(this.b);
        o();
    }

    private void m() {
        if (this.h) {
            p();
        } else {
            this.j.c();
        }
    }

    public void c() {
        AVMedia D = this.a != null ? this.a.D() : null;
        if (D != null) {
            this.h = D.d();
            m();
        }
    }

    void h() {
        if (this.a != null) {
            if (this.i) {
                n();
            } else if (this.a.u()) {
                this.a.r();
            } else {
                this.a.b(false);
            }
            o();
        }
    }

    private void n() {
        if (this.a != null) {
            this.j.a();
            this.a.b(true);
            this.i = false;
            g();
        }
    }

    private void o() {
        if (this.a != null) {
            if (this.i) {
                this.e.setImageResource(bcw.ic_video_replay_btn);
                this.e.setContentDescription(getResources().getString(bdc.replay));
            } else if (this.a.u()) {
                this.e.setImageResource(bcw.ic_video_pause_btn);
                this.e.setContentDescription(getResources().getString(bdc.pause));
            } else {
                this.e.setImageResource(bcw.ic_video_play_btn);
                this.e.setContentDescription(getResources().getString(bdc.play));
            }
        }
    }

    public boolean i() {
        return this.b.getParent() != null && this.b.getVisibility() == 0;
    }

    protected void setVideoControlsBackgroundTransparency(int i) {
        Drawable background = this.b.getBackground();
        if (background != null) {
            background.setAlpha(i);
        }
    }

    public void a(bd bdVar) {
        if (!this.h && this.l.a(bdVar)) {
            this.g.setVisibility(0);
        }
        this.j.a(bdVar);
    }

    private void p() {
        this.e.setVisibility(0);
        this.g.setVisibility(8);
        this.j.d();
    }

    public View getControlBarView() {
        return this.b;
    }

    public void onClick(View view) {
        boolean z = this.i;
        if (view.equals(this.e)) {
            h();
            if (this.k == null) {
                return;
            }
            if (z) {
                this.k.w();
            } else {
                this.k.y();
            }
        } else if (view.equals(this.g)) {
            if (this.a != null) {
                this.a.B();
            }
        } else if (view.equals(this.f) && this.k != null) {
            this.k.x();
        }
    }

    public void setListener(f fVar) {
        this.k = fVar;
    }

    public void c(boolean z) {
        if (z) {
            this.f.setImageResource(bcw.ic_video_collapse_btn);
            this.f.setContentDescription(getResources().getString(bdc.av_player_button_collapse));
            return;
        }
        this.f.setImageResource(bcw.ic_video_expand_btn);
        this.f.setContentDescription(getResources().getString(bdc.av_player_button_fullscreen));
    }
}
