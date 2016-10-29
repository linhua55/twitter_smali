package com.twitter.android.av.video;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import bqk;
import com.twitter.android.av.ae;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.app.common.util.v;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.al;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.client.s;
import com.twitter.library.media.util.ac;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class e<ActivityWithListenerRegistry extends Activity & s> extends k<ActivityWithListenerRegistry> {
    @VisibleForTesting
    VideoPlayerView a;
    @VisibleForTesting
    AVPlayerAttachment b;
    @VisibleForTesting
    au c;
    @VisibleForTesting
    boolean d;
    private final boolean k;
    private final bk l;
    private final ai m;

    public e(ActivityWithListenerRegistry activityWithListenerRegistry, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        this(activityWithListenerRegistry, viewGroup, new bd(), new bk(), ai.a(), new ae(), twitterScribeAssociation, aVDataSource, onClickListener);
    }

    public e(ActivityWithListenerRegistry activityWithListenerRegistry, ViewGroup viewGroup, bd bdVar, bk bkVar, ai aiVar, ae aeVar, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        super(activityWithListenerRegistry, viewGroup, twitterScribeAssociation, aVDataSource, bdVar, onClickListener);
        this.l = bkVar;
        this.m = aiVar;
        this.k = !aeVar.b(this.g.i().a().c());
        aeVar.a();
        this.f.setOnClickListener(l());
    }

    public void a(bqk bqk, Mode mode) {
        Context m = m();
        if (m != null) {
            ((s) m).a(this);
            this.c = new av().a(this.g);
            this.b = new ar(this.m).a(this.c).a(bqk).a(this.i).a(m.getBaseContext()).b(false).a(v.a(m)).a();
            this.d = false;
            this.a = this.l.a(m, this.b, mode);
            if (ac.a(this.g.b()) && Mode.g != mode) {
                this.a.setOnTouchListener(new al(this.b.a(), this.a));
                this.a.setOnClickListener(l());
            }
            this.a.setAVPlayerListener(new f(this));
            p();
            this.f.addView(this.a, new LayoutParams(-1, -2));
        }
    }

    private void p() {
        if (this.a != null) {
            if (this.e != null) {
                this.e.a(this.b);
            }
            this.a.setExternalChromeView(this.e);
        }
    }

    public void a() {
        if (this.a != null) {
            f();
            this.m.b(this.c);
            this.a = null;
        }
        Activity m = m();
        if (m != null) {
            ((s) m).b(this);
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.m();
        }
    }

    public void a(h hVar) {
        super.a(hVar);
        p();
    }

    public boolean c() {
        return this.k;
    }

    public au aR_() {
        return this.a != null ? this.a.n() : au.a;
    }

    public au aS_() {
        return this.a != null ? this.a.o() : au.a;
    }

    public au h() {
        return this.a != null ? this.a.q() : au.a;
    }

    public void e() {
        if (this.b != null) {
            this.b.i();
        }
    }

    public void a(boolean z) {
        if (this.b != null) {
            this.b.j();
        }
    }

    void f() {
        if (!this.d) {
            this.m.a(this.b);
        }
        this.d = true;
        this.f.removeView(this.a);
        this.a = null;
    }

    protected void j() {
        if (this.a == null || !this.a.a()) {
            super.j();
        }
    }

    public AVPlayerAttachment k() {
        return this.b;
    }
}
