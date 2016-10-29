package com.twitter.library.api;

import android.content.Context;
import ark;
import aru;
import asa;
import beb;
import bvj;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import defpackage.ciz;

/* compiled from: Twttr */
public class s extends beb<t<ciz, Void>> {
    private final String a;

    protected /* synthetic */ c f() {
        return e();
    }

    public s(Context context, Session session, String str) {
        super(context, s.class.getName(), session);
        this.a = str;
    }

    protected e b() {
        e a = K().a("help", "settings");
        if (d.a("feature_switches_configs_use_feature_set_token")) {
            a.a("feature_set_token", this.a);
        }
        return a;
    }

    protected t<ciz, Void> e() {
        return v.a(ciz.class, null);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<ciz, Void> tVar) {
        super.a(httpOperation, aaVar, tVar);
        long j = N().c;
        if (!httpOperation.k() || tVar == null || tVar.b() == null) {
            asa.a("fs:fetch:fetch_not_load", aru.b(), j, ark.m).k();
            return;
        }
        ark ark = new ark("fs:download:blocked", ark.m, m().a());
        ark.b("fs_request");
        aru.b().a(ark);
        asa.a("fs:fetch:fetch_not_load", aru.b(), j, ark.m).j();
        ciz ciz = (ciz) tVar.b();
        ciz c = ciz.c();
        bvj.a(j, ciz);
        bvj.a(this.p, j, c);
    }
}
