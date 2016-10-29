package com.twitter.android.alerts.landing;

import android.os.Bundle;
import bwi;
import cgd;
import com.twitter.config.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bwh;
import defpackage.cfb;
import defpackage.cym;
import defpackage.dbg;
import defpackage.sj;
import java.util.List;
import rx.o;
import rx.r;

/* compiled from: Twttr */
public class f implements e {
    private final d a;
    private final bwh b;
    private final bwi c;
    private final sj d;
    private final dbg e;
    private cgd f;
    private String g;
    private final r<cgd> h;

    public f(d dVar, sj sjVar, bwh bwh) {
        this.c = new g(this);
        this.e = new dbg();
        this.h = new h(this);
        this.a = dVar;
        this.d = sjVar;
        this.b = bwh;
    }

    public void a(Bundle bundle) {
        this.b.a(bundle == null ? null : bundle.getBundle("state_map_bundle"));
    }

    public String a() {
        return this.f == null ? null : this.f.b;
    }

    public void b() {
        this.b.a();
        if (!d.a("alerts_v2_experience_enabled")) {
            cfb.b("AlertLanding", "Alerts v2 feature switch disabled. Exiting.");
            this.a.finish();
        }
    }

    public void b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        this.b.b(bundle2);
        bundle.putBundle("state_map_bundle", bundle2);
    }

    public void c() {
        this.b.b();
    }

    public void e() {
        this.b.d();
    }

    public void d() {
        this.b.c();
        this.e.K_();
    }

    public void a(o<cgd> oVar) {
        this.e.a(oVar.a(this.h));
    }

    private void a(cgd cgd) {
        b(cgd);
        a(cgd.e);
        this.a.c(cgd.f);
    }

    String a(List<TwitterUser> list) {
        n d = n.d();
        for (TwitterUser twitterUser : list) {
            d.c(twitterUser.k);
        }
        return aj.a((CharSequence) ", ", (Iterable) d.q());
    }

    private void b(cgd cgd) {
        this.a.a(cgd.b, a(cgd.d));
    }

    private void a(String str) {
        if (!str.equalsIgnoreCase(this.g)) {
            this.b.a(str, this.c);
            this.g = str;
        }
    }

    public void f() {
        if (this.f != null) {
            boolean z = !this.f.f;
            this.a.c(z);
            this.e.a(this.d.a((cgd) this.f.b().a(z).q()).a(cym.a()).b(new i(this, z)));
        }
    }
}
