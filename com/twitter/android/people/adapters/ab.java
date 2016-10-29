package com.twitter.android.people.adapters;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.people.aj;
import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.model.people.w;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import ctc;
import cto;
import java.util.Map;

/* compiled from: Twttr */
public class ab {
    private static final i a;
    private static final i b;

    static {
        a = new p();
        b = new s();
    }

    public static i a() {
        return a;
    }

    public static i b() {
        return b;
    }

    public static i a(g gVar) {
        w wVar = gVar.c().c;
        return new u(gVar, wVar.a, wVar.c);
    }

    public static i b(g gVar) {
        return new y(gVar, e.a(gVar.c().c.d));
    }

    public static i c(g gVar) {
        w wVar = gVar.c().c;
        return new q(gVar, e.a(wVar.h), wVar.a, null);
    }

    public static i d(g gVar) {
        return new o(gVar, e.a(gVar.c().c.f));
    }

    public static i e(g gVar) {
        w wVar = gVar.c().c;
        return new t(gVar, wVar.a, wVar.c);
    }

    public static i f(g gVar) {
        w wVar = gVar.c().c;
        return new j(gVar, wVar.a, (aj) e.a(wVar.c), false);
    }

    public static Iterable<i> g(g gVar) {
        Object obj = gVar.c().c.d;
        Iterable a = cto.a(obj, obj.size() - 1);
        Iterable b = n.b(CollectionUtils.c(obj));
        return cto.a(new Iterable[]{cto.a(a, a(gVar, true)), cto.a(b, a(gVar, false))});
    }

    private static ctc<am, i> a(g gVar, boolean z) {
        return new ac(gVar, z);
    }

    public static Iterable<i> h(g gVar) {
        w wVar = gVar.c().c;
        e.a(wVar.d);
        e.a(wVar.e);
        Map c = MutableMap.c();
        for (am amVar : wVar.d) {
            c.put(amVar, cto.a(wVar.e, new ad(amVar)));
        }
        return cto.a(cto.b(wVar.d, new ae(c, gVar)));
    }

    private static Iterable<as> b(Iterable<Tweet> iterable) {
        return cto.b(iterable, new af());
    }
}
