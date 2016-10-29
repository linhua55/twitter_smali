package com.twitter.android.dm;

import com.twitter.library.database.dm.d;
import com.twitter.library.provider.f;
import com.twitter.library.provider.k;
import com.twitter.library.provider.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public class aq {
    private final Map<Long, m> a;
    private f b;

    public aq() {
        this.a = new LinkedHashMap();
    }

    public boolean a() {
        return b() || !CollectionUtils.b(this.a);
    }

    public boolean b() {
        return this.b != null;
    }

    public k[] c() {
        if (!b()) {
            return (k[]) this.a.values().toArray(new k[this.a.size()]);
        }
        return new k[]{this.b};
    }

    public int d() {
        return c().length;
    }

    private void b(Set<Long> set) {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            if (!set.contains(((Entry) it.next()).getKey())) {
                it.remove();
            }
        }
    }

    public List<TwitterUser> e() {
        n d = n.d();
        for (k a : this.a.values()) {
            d.c(a.a());
        }
        return (List) d.q();
    }

    public Set<Long> f() {
        return this.a.keySet();
    }

    public void a(k... kVarArr) {
        for (k kVar : kVarArr) {
            if (kVar.b() && (kVar instanceof f)) {
                this.b = (f) kVar;
                this.a.clear();
            } else if (kVar instanceof m) {
                TwitterUser twitterUser = (TwitterUser) kVar.a().get(0);
                this.b = null;
                if (this.a.containsKey(Long.valueOf(twitterUser.bf_()))) {
                    this.a.remove(Long.valueOf(twitterUser.bf_()));
                } else {
                    this.a.put(Long.valueOf(twitterUser.bf_()), (m) kVar);
                }
            }
        }
    }

    public d g() {
        return b() ? this.b.c() : null;
    }

    public void a(Set<Long> set) {
        b(set);
        c(set);
    }

    private void c(Set<Long> set) {
        if (!set.contains(Long.valueOf(-1))) {
            this.b = null;
        }
    }
}
