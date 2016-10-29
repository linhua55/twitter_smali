package com.twitter.android.nativecards;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import cfb;
import cmb;
import com.twitter.android.card.f;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.library.av.playback.PeriscopeDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cai;
import defpackage.cam;
import defpackage.cao;
import defpackage.cat;

/* compiled from: Twttr */
public class x extends q implements bzs, cao, cat, a {
    private final cam a;
    private final ad b;
    private final PeriscopeCapiModel c;
    private final w d;
    private final z e;
    private final ViewGroup f;
    private int g;

    public x(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, ad adVar, PeriscopeCapiModel periscopeCapiModel, w wVar, y yVar, z zVar) {
        super(activity, displayMode, fVar, aVar);
        this.a = new cam(this);
        this.b = adVar;
        this.c = periscopeCapiModel;
        this.d = wVar;
        this.f = yVar.a();
        this.e = zVar;
        this.e.a(this.f);
    }

    public void b() {
        this.e.f();
    }

    public View e() {
        return this.f;
    }

    public void a(cai cai) {
        super.a(cai);
        this.e.a(this.t);
        this.b.a(this.w);
        if (this.b.e()) {
            this.e.b();
            return;
        }
        this.d.a(this.y, this);
        bzr.a().a(this.y, this);
        this.a.a();
    }

    public void a() {
        super.a();
        this.e.e();
        this.a.b();
        bzr.a().b(this.y, this);
        this.d.b();
    }

    public void am_() {
        super.am_();
        this.a.d();
    }

    public void ak_() {
        super.ak_();
        this.e.g();
        this.a.c();
    }

    public void a(boolean z) {
        super.a(z);
        this.e.a(z);
    }

    public void a(long j, cmb cmb) {
        this.b.a(cmb);
        this.e.a(new PeriscopeDataSource(this.w, this.c, this.b.c(), this.b.d()));
        if (this.b.e()) {
            this.e.a();
            return;
        }
        this.e.c();
        this.e.d();
    }

    public void a(int i, cmb cmb) {
        if (this.b.d() != null) {
            this.c.a(cmb);
            if (this.c.d() != null) {
                this.e.c();
                this.e.d();
                return;
            }
            this.e.a();
        }
    }

    public void a(int i) {
        cfb.e("PeriscopeCard", "Capi error: " + i);
        this.e.a();
        this.g++;
    }

    public int d() {
        return this.c.a();
    }

    public boolean g() {
        return !this.c.j() && this.g < 3;
    }

    public void aQ_() {
        this.d.a();
    }

    public boolean c() {
        return this.e.h();
    }

    public au aR_() {
        return this.e.i();
    }

    public au aS_() {
        return this.e.j();
    }

    public au h() {
        return this.e.k();
    }

    public View i() {
        return e();
    }
}
