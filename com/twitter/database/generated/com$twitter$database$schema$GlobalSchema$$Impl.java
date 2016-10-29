package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.model.b;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.database.schema.GlobalSchema;
import com.twitter.database.schema.g;
import com.twitter.database.schema.i;
import com.twitter.database.schema.k;
import com.twitter.database.schema.m;
import defpackage.aut;
import defpackage.auv;
import java.util.LinkedHashMap;
import java.util.Map;

@aoa
/* compiled from: Twttr */
public final class com$twitter$database$schema$GlobalSchema$$Impl extends f implements GlobalSchema {
    private static final Map<Class<? extends p>, Class<? extends p>> b;
    private static final Map<Class<? extends q>, Class<? extends q>> c;
    private static final Map<Class<? extends r>, Class<? extends r>> d;

    static {
        b = new LinkedHashMap();
        b.put(aut.class, bb.class);
        b.put(i.class, aa.class);
        b.put(m.class, ai.class);
        b.put(g.class, w.class);
        b.put(k.class, ae.class);
        c = new LinkedHashMap();
        d = new LinkedHashMap();
        d.put(auv.class, bf.class);
    }

    @aoa
    public com$twitter$database$schema$GlobalSchema$$Impl(b bVar) {
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
