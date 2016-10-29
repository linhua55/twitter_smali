package com.twitter.database.lru;

import com.twitter.database.lru.LruPolicy.Type;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class k<K, V> {
    private static final long f;
    private static final ab g;
    public final ab a;
    public final String b;
    public final n<V> c;
    public final m<K> d;
    public final int e;

    static {
        f = TimeUnit.DAYS.toMillis(1);
        g = new ab(new LruPolicy(Type.ENTRY_COUNT, 50), f);
    }

    k(l<K, V> lVar) {
        this.a = lVar.a;
        this.b = lVar.b;
        this.c = (n) e.a(lVar.c);
        this.e = lVar.e;
        this.d = (m) e.a(lVar.d);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof k) && ObjectUtils.a(this.b, ((k) obj).b));
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
