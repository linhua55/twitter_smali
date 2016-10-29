package com.twitter.android.av;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.twitter.library.av.control.c;
import com.twitter.library.av.control.d;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.b;

/* compiled from: Twttr */
public class AutoPlayVideoPlayerChromeView extends FrameLayout implements OnClickListener, h {
    protected AutoPlayBadgeView a;
    AVPlayerAttachment b;
    View c;
    boolean d;
    private final c e;
    private boolean f;

    public AutoPlayVideoPlayerChromeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = d.b();
    }

    public AutoPlayVideoPlayerChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = d.b();
    }

    public AutoPlayVideoPlayerChromeView(Context context) {
        super(context);
        this.e = d.b();
    }

    public View getView() {
        return this;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        removeAllViews();
        this.b = aVPlayerAttachment;
        LayoutInflater from = LayoutInflater.from(getContext());
        from.inflate(2130968636, this);
        this.a = (AutoPlayBadgeView) findViewById(2131951997);
        from.inflate(2130968637, this);
        this.c = findViewById(2131951996);
        this.c.setOnClickListener(this);
        if (aVPlayerAttachment != null) {
            this.a.setAVDataSource(aVPlayerAttachment.h().c());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.a != null) {
            int right = this.a.getRight();
            super.onLayout(z, i, i2, i3, i4);
            if (right != this.a.getRight() && right != 0) {
                ObjectAnimator ofInt = ObjectAnimator.ofInt(this.a, TtmlNode.RIGHT, new int[]{right, r1});
                if (VERSION.SDK_INT >= 18) {
                    ofInt.setAutoCancel(true);
                }
                ofInt.start();
                return;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k();
    }

    public void a(AVMedia aVMedia) {
        this.d = b.a(aVMedia);
        if (this.a != null) {
            this.a.setAvMedia(aVMedia);
        }
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        if (aVPlayer$PlayerStartType != AVPlayer$PlayerStartType.START || VERSION.SDK_INT < 17) {
            n();
        }
    }

    public void a() {
        o();
    }

    public void b() {
        n();
    }

    public void c() {
        if (this.b.a().E()) {
            m();
        }
    }

    public void d() {
        k();
    }

    public void e() {
    }

    public void a_(boolean z) {
        o();
    }

    public boolean f() {
        return false;
    }

    public void g() {
        o();
    }

    public void h() {
    }

    public void i() {
    }

    public void j() {
        k();
        if (this.c != null) {
            this.c.setVisibility(8);
        }
    }

    void k() {
        AVPlayerAttachment aVPlayerAttachment = this.b;
        AVPlayer a = aVPlayerAttachment != null ? aVPlayerAttachment.a() : null;
        if (a != null) {
            if (a.u()) {
                n();
            } else if (a.t() && a.E()) {
                m();
            } else {
                o();
            }
        }
    }

    public void l() {
    }

    public void b_(boolean z) {
    }

    public void a(Context context, String str) {
        o();
    }

    public void a(bd bdVar) {
        if (this.f) {
            if (this.a != null) {
                this.a.a(bdVar);
            }
            if (this.d && this.e.a(bdVar)) {
                p();
            }
        }
    }

    public void onClick(View view) {
        if (view.equals(this.c) && this.b != null) {
            this.b.p();
        }
    }

    protected void m() {
        if (this.a != null) {
            this.a.a();
        }
        q();
    }

    protected void n() {
        this.f = true;
        if (this.a != null) {
            this.a.b();
        }
        q();
    }

    protected void o() {
        this.f = false;
        if (this.a != null) {
            this.a.c();
        }
        q();
    }

    private void p() {
        if (this.c != null && this.c.getVisibility() == 8) {
            com.twitter.util.d.b(this.c, 300);
        }
    }

    private void q() {
        if (this.c != null && this.c.getVisibility() == 0) {
            com.twitter.util.d.a(this.c, 300, null, 8);
        }
    }
}
