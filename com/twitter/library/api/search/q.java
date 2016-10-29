package com.twitter.library.api.search;

import android.content.Context;
import beb;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.util.al;
import java.util.List;

/* compiled from: Twttr */
public class q extends beb<as> {
    private final int a;
    private final int b;
    private final long c;
    private int h;
    private final long i;
    private long j;

    protected /* synthetic */ c f() {
        return g();
    }

    public q(Context context, Session session, int i, int i2, long j) {
        super(context, q.class.getName(), session);
        this.a = i;
        this.b = i2;
        this.c = new ab(session).c;
        this.i = j;
    }

    public int e() {
        return this.a;
    }

    protected e b() {
        e a = K().a("search", "typeahead");
        a.a("prefetch", true);
        switch (this.a) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a.a("result_type", "users");
                a.a("users_cache_age", this.j);
                a.a("media_tagging_in_prefetch", true);
                this.h = 1;
                if (this.b > 0) {
                    a.a("count", (long) this.b);
                }
                return a;
            default:
                throw new IllegalArgumentException("Invalid type: " + this.a);
        }
    }

    protected as g() {
        return as.a(16);
    }

    protected boolean c(aa aaVar) {
        long c = di.a(this.p, this.c).c(this.a);
        if (al.b() <= this.i + c) {
            return false;
        }
        if (c > 0) {
            this.j = al.d(c);
        } else {
            this.j = -1;
        }
        return true;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            List list = (List) asVar.b();
            di a = di.a(this.p, this.c);
            com.twitter.library.provider.e T = T();
            if (a.a(list, this.c, this.h, T) > 0) {
                a.a(this.a, al.b());
            }
            T.a();
        }
    }
}
