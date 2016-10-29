package com.twitter.android.nativecards;

import aef;
import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.View.OnClickListener;
import cmb;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.moments.viewmodels.v;
import com.twitter.android.moments.viewmodels.w;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.TwitterUser;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public class t extends q implements bzs, cbd, a {
    private final w a;
    private final aef b;
    private v c;
    private com.twitter.model.moments.a d;
    private long e;

    public t(Activity activity, DisplayMode displayMode, w wVar, aef aef) {
        this(activity, displayMode, new h(activity), new b(activity), wVar, aef);
    }

    public t(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, w wVar, aef aef) {
        super(activity, displayMode, fVar, aVar);
        this.b = aef;
        this.a = wVar;
    }

    public void a(cai cai) {
        super.a(cai);
        this.y = cai.b;
        this.e = v.a(cai.c);
        if (this.e > -1) {
            k().a(this.e, this);
            return;
        }
        this.b.a(null);
        j().a(this.y, this);
    }

    public void a(long j, cmb cmb) {
        this.c = this.a.a(cmb);
        this.b.a(this.c, this.t);
        this.b.a(p());
    }

    public void a(long j, TwitterUser twitterUser) {
        this.d = v.a(twitterUser);
        this.b.a(twitterUser);
        this.b.a(this.d);
        j().a(this.y, this);
    }

    public void b() {
        this.b.b();
    }

    public void a() {
        super.a();
        this.b.c();
        j().b(this.y, this);
        k().b(this.e, this);
    }

    public View e() {
        return this.b.e();
    }

    protected bzr j() {
        return bzr.a();
    }

    protected cbc k() {
        return cbc.a();
    }

    @VisibleForTesting
    OnClickListener p() {
        return new u(this);
    }

    public boolean c() {
        return this.b.d().c();
    }

    public au aR_() {
        return this.b.d().aR_();
    }

    public au aS_() {
        return this.b.d().aS_();
    }

    public au h() {
        return this.b.d().h();
    }

    public View i() {
        return this.b.d().i();
    }
}
