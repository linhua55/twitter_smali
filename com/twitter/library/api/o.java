package com.twitter.library.api;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.util.ae;

/* compiled from: Twttr */
public class o extends b<as> {
    private boolean a;

    protected /* synthetic */ c f() {
        return b();
    }

    public o(Context context, Session session) {
        super(context, o.class.getName(), session);
        if (session == null) {
            throw new IllegalArgumentException("Session cannot be null");
        }
        k("Not triggered by a user action.");
    }

    protected d a() {
        return K().a("account", "verify_credentials").a();
    }

    protected as b() {
        return as.a(80);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.a = ((Boolean) asVar.b()).booleanValue();
        }
        ae.a(this.p).a(this.a, false);
    }

    public boolean e() {
        return this.a;
    }
}
