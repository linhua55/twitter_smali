package com.twitter.library.api.search;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class b extends com.twitter.library.service.b<as> {
    private final String a;
    private final long b;

    protected /* synthetic */ c f() {
        return b();
    }

    public b(Context context, Session session, String str, long j) {
        super(context, b.class.getName(), session);
        this.a = str;
        this.b = j;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST);
        if (M() == 0) {
            return a.a(new Object[]{"saved_searches", "create"}).a("query", this.a).a();
        }
        return a.a(new Object[]{"saved_searches", "destroy", Long.valueOf(this.b)}).a();
    }

    protected as b() {
        return as.a(11);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            di S = S();
            com.twitter.library.provider.e T = T();
            if (M() == 0) {
                S.a((TwitterSearchQuery) asVar.b(), 6, T);
            } else {
                S.b(this.b, T);
            }
            T.a();
        }
    }
}
