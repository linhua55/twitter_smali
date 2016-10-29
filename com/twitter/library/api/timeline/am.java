package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.search.j;
import com.twitter.library.api.search.k;
import com.twitter.library.api.search.m;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableList;
import cpj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: Twttr */
public class am extends b<m> {
    private final boolean a;
    private final String b;
    private final int c;
    private final String g;
    private final String h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private int l;
    private boolean m;
    private final boolean r;
    private boolean s;
    private final boolean t;
    private final ArrayList<TwitterTopic> u;
    private final ArrayList<TwitterTopic> v;

    protected /* synthetic */ c f() {
        return b();
    }

    public am(Context context, Session session) {
        this(context, session, false);
    }

    public am(Context context, Session session, boolean z) {
        this(context, session, true, TtmlNode.ANONYMOUS_REGION_ID, 0, TtmlNode.ANONYMOUS_REGION_ID, "top", true, true, true, z, true);
    }

    public am(Context context, Session session, boolean z, String str, int i, String str2, String str3, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        super(context, am.class.getName(), session);
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.a = z;
        this.b = str;
        this.c = i;
        this.g = str2;
        this.h = str3;
        this.i = z2;
        this.j = z3;
        this.k = z4;
        this.r = z5;
        this.t = z6;
    }

    protected m b() {
        return new m();
    }

    protected d a() {
        e a = K().a("trends", "plus");
        if (this.a) {
            a.a("pc", this.a);
        }
        if (aj.b(this.b)) {
            a.a("debug_str", this.b);
        }
        if (this.c > 0) {
            a.a("debug_lvl", (long) this.c);
        }
        if (aj.b(this.g)) {
            a.a("experiments", this.g);
        }
        if (this.l > 0) {
            a.a("max_trends", (long) this.l);
        }
        if (aj.b(this.h)) {
            a.a("tr_img", this.h);
        }
        if (this.i) {
            a.a("tr_desc", this.i);
        }
        if (this.j) {
            a.a("tr_ctx_rel", this.j);
        }
        if (this.k) {
            a.a("tr_ctx_cnt", this.k);
        }
        if (this.t) {
            a.a("tr_empty_ok", this.t);
        }
        return a.a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, m mVar) {
        if (httpOperation.k()) {
            k kVar = (k) mVar.b();
            if (kVar != null && kVar.b != null) {
                this.s = kVar.a.c;
                Collection a = MutableList.a();
                Iterator it = kVar.b.iterator();
                while (it.hasNext()) {
                    j jVar = (j) it.next();
                    if (jVar.a == 0 || jVar.a == 4) {
                        a.add(jVar.b);
                    }
                }
                this.u.clear();
                this.u.addAll(S().b(false));
                this.m = cpj.b(this.u, a);
                if (this.m) {
                    cpj.a(this.u, a);
                    boolean O = O();
                    di S = S();
                    long j = N().c;
                    if (O) {
                        S.a(j, a, O, null, g());
                        this.v.clear();
                        this.v.addAll(a);
                        return;
                    }
                    com.twitter.library.provider.e T = T();
                    S.a(j, a, O, T, g());
                    T.a();
                    if (this.r) {
                        this.u.clear();
                        this.u.addAll(a);
                    }
                }
            }
        }
    }

    public boolean e() {
        return this.m;
    }

    public boolean g() {
        return this.s;
    }
}
