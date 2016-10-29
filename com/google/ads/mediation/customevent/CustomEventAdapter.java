package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.a;
import com.google.ads.mediation.h;
import com.google.ads.mediation.j;
import com.google.ads.mediation.k;
import com.google.ads.mediation.l;
import com.google.ads.mediation.m;
import com.google.android.gms.ads.mediation.customevent.g;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.qd;

@KeepName
public final class CustomEventAdapter implements j<g, h>, l<g, h> {
    d a;
    f b;
    private View c;

    private static <T> T a(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Throwable th) {
            qd.d("Could not instantiate custom event adapter: " + str + ". " + th.getMessage());
            return null;
        }
    }

    c a(m mVar) {
        return new c(this, this, mVar);
    }

    public void a() {
        if (this.a != null) {
            this.a.a();
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    public void a(k kVar, Activity activity, h hVar, a aVar, h hVar2, g gVar) {
        this.a = (d) a(hVar.b);
        if (this.a == null) {
            kVar.a(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.a.a(new b(this, kVar), activity, hVar.a, hVar.c, aVar, hVar2, gVar == null ? null : gVar.a(hVar.a));
        }
    }

    public void a(m mVar, Activity activity, h hVar, h hVar2, g gVar) {
        this.b = (f) a(hVar.b);
        if (this.b == null) {
            mVar.a(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.b.a(a(mVar), activity, hVar.a, hVar.c, hVar2, gVar == null ? null : gVar.a(hVar.a));
        }
    }

    public Class<g> b() {
        return g.class;
    }

    public Class<h> c() {
        return h.class;
    }

    public View d() {
        return this.c;
    }

    public void e() {
        this.b.b();
    }
}
