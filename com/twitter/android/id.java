package com.twitter.android;

import com.twitter.library.client.bg;
import com.twitter.util.collection.MutableMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class id {
    protected final bg a;
    private final Map<Long, Set<Long>> b;

    public id(bg bgVar) {
        this.b = MutableMap.a();
        this.a = bgVar;
    }

    protected boolean a(long j) {
        long g = this.a.c().g();
        if (!this.b.containsKey(Long.valueOf(g))) {
            this.b.put(Long.valueOf(g), new HashSet());
        }
        return ((Set) this.b.get(Long.valueOf(g))).add(Long.valueOf(j));
    }

    public void a() {
        this.b.remove(Long.valueOf(this.a.c().g()));
    }
}
