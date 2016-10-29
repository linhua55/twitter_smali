package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.model.b;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.a;
import com.twitter.database.schema.c;
import com.twitter.database.schema.e;
import java.util.LinkedHashMap;
import java.util.Map;

@aoa
/* compiled from: Twttr */
public final class com$twitter$database$schema$DraftsSchema$$Impl extends f implements DraftsSchema {
    private static final Map<Class<? extends p>, Class<? extends p>> b;
    private static final Map<Class<? extends q>, Class<? extends q>> c;
    private static final Map<Class<? extends r>, Class<? extends r>> d;

    static {
        b = new LinkedHashMap();
        b.put(a.class, n.class);
        c = new LinkedHashMap();
        c.put(c.class, r.class);
        d = new LinkedHashMap();
        d.put(e.class, u.class);
    }

    @aoa
    public com$twitter$database$schema$DraftsSchema$$Impl(b bVar) {
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
