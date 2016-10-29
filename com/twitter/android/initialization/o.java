package com.twitter.android.initialization;

import aok;
import com.twitter.util.collection.MutableMap;
import defpackage.aof;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class o implements aok {
    private final Executor a;
    private final Map<String, Long> b;

    public o(Executor executor) {
        this.b = Collections.synchronizedMap(MutableMap.a());
        this.a = executor;
    }

    public void a() {
    }

    public void a(long j) {
        this.b.put("initializer:blocking:total", Long.valueOf(j));
    }

    public void a(aof aof, long j) {
        this.b.put("initializer:" + aof.getClass().getSimpleName(), Long.valueOf(j));
    }

    public void b() {
        this.a.execute(new p(this));
    }
}
