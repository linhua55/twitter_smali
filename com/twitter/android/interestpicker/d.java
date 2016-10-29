package com.twitter.android.interestpicker;

import android.app.Application;
import atn;
import cgu;
import com.twitter.library.client.Session;
import defpackage.blm;
import defpackage.chd;
import defpackage.cjh;
import defpackage.cji;

/* compiled from: Twttr */
public class d extends atn<Void, cgu<cjh>, blm> {
    private final Application a;
    private final Session b;

    public d(Application application, Session session) {
        this.a = application;
        this.b = session;
    }

    protected cgu<cjh> a(blm blm) {
        cji g = blm.g();
        return new chd(g == null ? null : g.b);
    }

    protected boolean a() {
        return true;
    }

    protected blm a(Void voidR) {
        return new blm(this.a, this.b);
    }
}
