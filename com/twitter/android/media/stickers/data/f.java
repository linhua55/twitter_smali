package com.twitter.android.media.stickers.data;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import defpackage.cka;

/* compiled from: Twttr */
public class f extends b<t<cka, cd>> {
    private cka a;

    protected /* synthetic */ c f() {
        return e();
    }

    public f(Context context, int i) {
        this(context, "stickers_categories", bg.a().c(), i);
    }

    protected f(Context context, String str, Session session, int i) {
        super(context, str, session, i);
    }

    protected final d a() {
        return b().a();
    }

    protected e b() {
        return K().a(RequestMethod.a).a("stickerprovider", "catalog");
    }

    protected t<cka, cd> e() {
        return v.a(cka.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cka, cd> tVar) {
        if (httpOperation.k() && tVar != null) {
            this.a = (cka) tVar.b();
        }
    }

    public cka g() {
        return this.a;
    }
}
