package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.m;
import com.twitter.util.collection.n;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class o extends c<t> {
    private static final Map<String, Long> a;
    private static final Collection<RequestMethod> b;
    private static final Collection<Integer> c;
    private final String g;
    private boolean h;
    private long i;

    protected /* synthetic */ c f() {
        return e();
    }

    static {
        a = new HashMap();
        b = Collections.singleton(RequestMethod.b);
        c = n.a(Integer.valueOf(401), new Integer[]{Integer.valueOf(503), Integer.valueOf(0)});
    }

    public o(Context context, Session session) {
        this(context, session, null, true);
    }

    public o(Context context, Session session, String str, boolean z) {
        this(context, new ab(session), str, z);
    }

    public o(Context context, ab abVar, String str, boolean z) {
        super(context, o.class.getName(), abVar);
        this.g = str;
        a(new m(6, 2, 120, TimeUnit.SECONDS, b, c));
        this.h = z;
    }

    protected boolean b(aa aaVar) {
        di S = S();
        e T = T();
        this.i = S.c(this.g);
        if (this.h) {
            this.h = false;
            if (this.g == null || S.e(this.g)) {
                S.a(this.g, this.i, T);
                T.a();
            } else {
                aaVar.a(true);
                return false;
            }
        }
        synchronized (a) {
            Long l = (Long) a.get(this.g);
            if (l == null || l.longValue() < this.i) {
                a.put(this.g, Long.valueOf(this.i));
                return true;
            }
            aaVar.a(true);
            return false;
        }
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        synchronized (a) {
            a.remove(this.g);
        }
    }

    protected com.twitter.library.service.e b() {
        com.twitter.library.service.e a = K().a(RequestMethod.b).b("dm", "conversation").a("send_error_codes", true);
        if (this.g != null) {
            a.b(this.g);
        }
        a.a("mark_read").a("last_read_event_id", this.i).a("request_id", UUID.randomUUID().toString());
        return a;
    }

    protected t e() {
        return null;
    }
}
