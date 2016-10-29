package com.twitter.android.periscope;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.View;
import com.twitter.android.FullscreenMediaPlayerActivity;
import com.twitter.android.av.GalleryVideoChromeView;
import com.twitter.android.av.PeriscopeFullscreenChromeView;
import com.twitter.android.av.bj;
import com.twitter.android.av.bo;
import com.twitter.android.businessprofiles.c;
import com.twitter.android.businessprofiles.d;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.profiles.au;
import com.twitter.app.common.base.t;
import com.twitter.library.av.playback.AVMediaPlayer;
import com.twitter.library.av.playback.bn;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import defpackage.aag;
import defpackage.aas;
import defpackage.brz;
import defpackage.cal;
import defpackage.cfb;
import defpackage.cgl;
import defpackage.dbo;
import defpackage.dbq;
import tv.periscope.android.library.PeriscopeException;
import tv.periscope.android.library.a;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.b;
import tv.periscope.android.ui.broadcast.ab;

/* compiled from: Twttr */
public class PeriscopePlayerActivity extends FullscreenMediaPlayerActivity implements c, f, dbq {
    private boolean A;
    private boolean B;
    private m C;
    private g D;
    private final TwitterUser l;
    private final au m;
    private final bo n;
    private final i o;
    private String p;
    private boolean q;
    private OrientationEventListener r;
    private s s;
    private o t;
    private bn u;
    private PeriscopeFullscreenChromeView v;
    private r w;
    private n x;
    private bj y;
    private Display z;

    public PeriscopePlayerActivity() {
        this.l = (TwitterUser) new cp().a(2445809510L).f("periscopeco").q();
        this.m = new au();
        this.n = new p(this);
        this.o = new i();
        this.A = true;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.p = intent.getStringExtra("broadcast_id");
        this.q = intent.getBooleanExtra("is_live", true);
        this.r = new q(this, this);
        this.y = new bj(this);
        this.y.a(this.n);
        this.s = new s(this.y);
        r();
        f();
        this.z = getWindowManager().getDefaultDisplay();
        this.m.a(new d(this, this, getSupportLoaderManager(), 1, this.l, brz.a((Context) this)));
        this.m.a();
    }

    private void f() {
        this.t = o.a(this);
        if (!a.b()) {
            a.a(getApplicationContext(), this.t);
        }
    }

    protected void a(aag aag, boolean z) {
        super.a(aag, z);
        if (this.a != null) {
            aas aas = (aas) aag;
            AVMediaPlayer g = this.a.g();
            if (!this.B && (g instanceof bn)) {
                a((bn) g, (PeriscopeFullscreenChromeView) aas.g());
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m();
    }

    public void c(boolean z) {
        super.c(z);
        m();
        if (z) {
            r();
        }
    }

    private void a(bn bnVar, PeriscopeFullscreenChromeView periscopeFullscreenChromeView) {
        i();
        this.u = bnVar;
        a(periscopeFullscreenChromeView);
        b abVar = new ab(this.v);
        PlayMode playMode = this.q ? PlayMode.Subscribe : PlayMode.AutoReplay;
        this.w = new r(this, abVar, this.u);
        this.w.a();
        a.a().c().a(this, this.p, playMode, abVar, this.w, this.w, this);
        this.B = true;
    }

    private void a(PeriscopeFullscreenChromeView periscopeFullscreenChromeView) {
        this.v = periscopeFullscreenChromeView;
        this.v.setAppCardViewProvider(this);
        this.v.setBroadcastProgress(this.o);
        this.v.setIsLive(this.q);
        this.s.a(this.v);
        this.x = new n(this.v, X(), this.d, this.c.getControls());
        m();
        GalleryVideoChromeView W_ = W_();
        W_.setShouldShowControls(this.a.D().d());
        W_.setControlsListener(this.s);
    }

    private void i() {
        if (this.w != null) {
            this.w.b();
        }
        this.s.a(null);
        this.s.a(null);
        this.t.g().a();
        this.B = false;
    }

    private View j() {
        cgl cgl = this.C.f.e;
        i a = cal.a((Activity) this, this.l.c, cgl);
        a.ba_();
        a.c();
        View d = a.d();
        a(this.l.c, cgl).a("impression", "platform_card");
        return d;
    }

    public void a(g gVar) {
        this.D = gVar;
        l();
    }

    public void a(m mVar) {
        this.C = mVar;
        l();
    }

    private void l() {
        if (this.D != null && this.C != null) {
            this.D.a(j());
        }
    }

    private f a(long j, cgl cgl) {
        f hVar = new h(this);
        hVar.a(j);
        hVar.a(cgl.N());
        return hVar;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017183);
        return true;
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953470) {
            return super.a(acVar);
        }
        if (this.v == null) {
            return true;
        }
        int i;
        this.A = !this.A;
        if (this.A) {
            this.v.getChannelView().a(false);
            i = 2131363245;
        } else {
            this.v.getChannelView().a();
            i = 2131363250;
        }
        acVar.g(i);
        return true;
    }

    protected void onRestart() {
        this.B = false;
        super.onRestart();
    }

    public void c(int i) {
        super.c(i);
        if (!this.B && this.a != null && (this.a.g() instanceof bn)) {
            a((bn) this.a.g(), (PeriscopeFullscreenChromeView) ((aas) this.f.b(i)).g());
        }
    }

    public void a(dbo dbo) {
        cfb.b("PeriscopePlayerActivity", "Loaded broadcast successfully");
        this.s.a(dbo);
        m();
    }

    public void a(PeriscopeException periscopeException) {
        cfb.b("PeriscopePlayerActivity", "Failed to load broadcast");
    }

    protected void onStart() {
        super.onStart();
        this.r.enable();
    }

    protected void onStop() {
        this.r.disable();
        super.onStop();
    }

    protected void onDestroy() {
        i();
        super.onDestroy();
    }

    private void m() {
        if (this.x != null) {
            Point point = new Point();
            Point point2 = new Point();
            this.z.getSize(point);
            if (VERSION.SDK_INT >= 17) {
                this.z.getRealSize(point2);
            }
            this.x.a(point2, point, this.b);
        }
    }

    private void r() {
        this.y.a(4000);
    }
}
