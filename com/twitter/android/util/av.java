package com.twitter.android.util;

import amc;
import amf;
import android.os.Bundle;
import android.os.Parcelable;
import bdl;
import com.twitter.android.timeline.aw;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.api.ad;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.timeline.s;
import com.twitter.util.ab;
import defpackage.aow;
import java.util.HashMap;

/* compiled from: Twttr */
public class av implements bb {
    private final TwitterFragmentActivity a;
    private final String b;
    private final int c;
    private bdl<aw> d;
    private aow e;
    private long f;
    private a g;
    private ax h;
    private ba i;
    private aw j;
    private final HashMap<Integer, ay> k;
    private long l;

    public av(TwitterFragmentActivity twitterFragmentActivity, bdl<aw> bdl_com_twitter_android_timeline_aw, az azVar, aow aow) {
        this.k = new HashMap();
        this.a = twitterFragmentActivity;
        this.d = bdl_com_twitter_android_timeline_aw;
        this.b = azVar.r();
        this.c = azVar.t();
        this.e = aow;
        a(bg.a().c());
    }

    public void a(Session session) {
        this.f = session.g();
    }

    public void a(aow aow) {
        if (!this.e.equals(aow)) {
            this.e = aow;
            this.g = null;
        }
    }

    public void a(int i) {
        if (i == this.c) {
            a(this.b);
        }
    }

    public void a(Session session, amc amc) {
        a().a();
        a(session);
        a(amf.a(amc));
    }

    private void a(String str) {
        az.a(this.a).a(ad.a(this.a, bg.a().c(), str, aq.a(this.a).d()), 0, this);
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        aa aaVar = (aa) xVar.l().b();
        if (aaVar.b() && (xVar instanceof ad)) {
            a((s) ab.a(aaVar.c, "prompt", s.a));
        }
    }

    public void a(s sVar) {
        boolean a;
        if (this.j != null) {
            a = this.j.a(sVar);
        } else {
            a = false;
        }
        if (!a) {
            Object obj;
            if (sVar != null) {
                ay ayVar = (ay) this.k.get(Integer.valueOf(sVar.c));
                if (ayVar != null) {
                    ayVar.a(sVar);
                    obj = 1;
                } else if (sVar.i()) {
                    b().a(sVar);
                    r0 = 1;
                } else if (sVar.g()) {
                    a().a(sVar);
                    r0 = 1;
                } else if (sVar.f()) {
                    c().a(sVar);
                    r0 = 1;
                } else {
                    obj = null;
                }
            } else {
                obj = null;
            }
            if (this.j != null && r0 == null) {
                this.j.b(sVar);
            }
        }
    }

    public a a() {
        if (this.g == null) {
            this.g = new a(this.a, this.e, this.d);
        }
        return this.g;
    }

    public ax b() {
        if (this.h == null) {
            this.h = new ax(this);
        }
        return this.h;
    }

    public ba c() {
        if (this.i == null) {
            this.i = new ba(this);
        }
        return this.i;
    }

    public Parcelable d() {
        Parcelable bundle = new Bundle();
        if (this.g != null) {
            bundle.putParcelable("state_action_prompt_handler", this.g.b());
        }
        return bundle;
    }

    public void a(Bundle bundle) {
        Bundle bundle2 = (Bundle) bundle.getParcelable("state_action_prompt_handler");
        if (bundle2 != null) {
            a().a(bundle2);
        }
    }

    public void a(aw awVar) {
        this.j = awVar;
    }
}
