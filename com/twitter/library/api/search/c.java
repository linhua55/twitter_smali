package com.twitter.library.api.search;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.d;
import com.twitter.util.al;
import java.util.List;

/* compiled from: Twttr */
public class c extends b<as> {
    private final long a;

    protected /* synthetic */ com.twitter.library.service.c f() {
        return b();
    }

    public c(Context context, Session session, long j) {
        super(context, c.class.getName(), session);
        this.a = j;
    }

    protected d a() {
        return K().a(RequestMethod.a).a("saved_searches", "list").a();
    }

    protected as b() {
        return as.a(4);
    }

    protected boolean b(aa aaVar) {
        return al.b() > S().c(3) + this.a;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            List list = (List) asVar.b();
            e T = T();
            di S = S();
            if (S.a(list, 6, T) > 0) {
                S.a(3, al.b());
            }
            T.a();
        }
    }
}
