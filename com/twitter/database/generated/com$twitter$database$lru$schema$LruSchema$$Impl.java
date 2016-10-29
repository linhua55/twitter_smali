package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.lru.schema.a;
import com.twitter.database.lru.schema.d;
import com.twitter.database.lru.schema.e;
import com.twitter.database.lru.schema.g;
import com.twitter.database.model.b;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import java.util.LinkedHashMap;
import java.util.Map;

@aoa
/* compiled from: Twttr */
public final class com$twitter$database$lru$schema$LruSchema$$Impl extends f implements LruSchema {
    private static final Map<Class<? extends p>, Class<? extends p>> b;
    private static final Map<Class<? extends q>, Class<? extends q>> c;
    private static final Map<Class<? extends r>, Class<? extends r>> d;

    static {
        b = new LinkedHashMap();
        b.put(a.class, b.class);
        b.put(e.class, h.class);
        c = new LinkedHashMap();
        d = new LinkedHashMap();
        d.put(d.class, f.class);
        d.put(g.class, l.class);
    }

    @aoa
    public com$twitter$database$lru$schema$LruSchema$$Impl(b bVar) {
        super(bVar);
    }

    protected final Map<Class<? extends p>, Class<? extends p>> a() {
        return b;
    }

    protected final Map<Class<? extends q>, Class<? extends q>> b() {
        return c;
    }

    protected final Map<Class<? extends r>, Class<? extends r>> c() {
        return d;
    }
}
