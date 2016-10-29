package com.twitter.android.provider;

import android.content.Context;
import chd;
import com.twitter.library.database.dm.a;
import com.twitter.library.database.dm.d;
import com.twitter.library.database.dm.l;
import com.twitter.library.provider.di;
import com.twitter.library.provider.ek;
import com.twitter.library.provider.h;
import com.twitter.library.provider.k;
import com.twitter.library.provider.o;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import defpackage.biw;
import defpackage.cgu;
import defpackage.cuj;
import defpackage.sw;
import java.util.List;
import java.util.Map;
import sx;

/* compiled from: Twttr */
public class j implements sw<l, k> {
    private final Context a;
    private final Map<l, chd<k>> b;

    public j(Context context) {
        this.b = MutableMap.a();
        this.a = context;
    }

    public void a(l lVar, sx<l, k> sxVar) {
        sxVar.a(lVar, a(lVar));
    }

    public cgu<k> a(l lVar) {
        if (!this.b.containsKey(lVar)) {
            a a = a.a(this.a, lVar.b);
            ek a2 = di.a(this.a, lVar.b);
            cuj kVar = new k(a.a(lVar.a), lVar);
            List a3 = a.a(-1);
            this.b.put(lVar, new chd(a(CollectionUtils.a(a(a3, a((com.twitter.library.provider.j) a2), a(a3, a2), lVar.b, false), kVar), lVar.d)));
        }
        return (cgu) this.b.get(lVar);
    }

    public List<k> a(long j, int i) {
        a a = a.a(this.a, j);
        ek a2 = di.a(this.a, j);
        List a3 = a.a(i);
        return a(a3, a((com.twitter.library.provider.j) a2), a(a3, a2), j, true);
    }

    static Map<String, d> a(com.twitter.library.provider.j jVar) {
        List<d> a = jVar.a(false);
        r a2 = r.a(a.size());
        for (d dVar : a) {
            a2.b(dVar.b, dVar);
        }
        return (Map) a2.q();
    }

    static Map<Long, TwitterUser> a(List<l> list, ek ekVar) {
        n d = n.d();
        for (l lVar : list) {
            if (!lVar.b) {
                try {
                    d.c(Long.valueOf(lVar.a));
                } catch (NumberFormatException e) {
                }
            }
        }
        return ekVar.a((List) d.q());
    }

    static List<k> a(List<l> list, Map<String, d> map, Map<Long, TwitterUser> map2, long j, boolean z) {
        n e = n.e();
        for (l lVar : list) {
            if (lVar.b) {
                d dVar = (d) map.get(lVar.a);
                if (!(dVar == null || dVar.l)) {
                    e.c(new h().a(dVar).a(lVar.c).q());
                }
            } else {
                Long valueOf = Long.valueOf(lVar.a);
                TwitterUser twitterUser = (TwitterUser) map2.get(valueOf);
                if (twitterUser != null) {
                    Object obj;
                    d dVar2 = (d) map.get(biw.a(valueOf.longValue(), j));
                    if (dVar2 == null) {
                        obj = !z ? 1 : null;
                    } else if (dVar2.l) {
                        obj = null;
                    } else {
                        int i = 1;
                    }
                    if (obj != null) {
                        e.c(new o().a(twitterUser).a(lVar.c).q());
                    }
                }
            }
        }
        return (List) e.q();
    }

    static List<k> a(List<k> list, int i) {
        return list.subList(0, Math.min(list.size(), i));
    }

    public void a() {
    }
}
