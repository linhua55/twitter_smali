package com.twitter.library.api;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class n extends h {
    private final long h;
    private final int i;
    private int j;
    private String k;
    private String l;

    public n(Context context, Session session, long j, String str, int i) {
        this(context, new ab(session), j, str, i);
    }

    public n(Context context, ab abVar, long j, String str, int i) {
        super(context, n.class.getName(), abVar, str);
        this.k = "-1";
        this.l = "0";
        this.h = j;
        this.i = i;
    }

    public void a(String str) {
        this.k = str;
    }

    public void b(String str) {
        this.l = str;
    }

    protected e b() {
        e a = super.b().a("include_user_entities", true);
        if (this.i >= 0) {
            a.a("max_members", (long) this.i);
        }
        an.a(this.p).a(a);
        return a;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (!httpOperation.j()) {
            return;
        }
        if (this.c == null) {
            httpOperation.l().a = 0;
        } else if (N() != null) {
            com.twitter.library.provider.e T = T();
            int a = S().a(this.c, this.h > 0 ? this.h : N().c, 6, (long) this.a.hashCode(), this.k, this.l, true, T);
            T.a();
            this.j = a;
        }
    }

    public int g() {
        return this.j;
    }

    public String h() {
        return this.b;
    }
}
