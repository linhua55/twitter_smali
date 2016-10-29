package com.twitter.model.moments;

import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.l;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class ap extends f<an> {
    private List<as> a;
    private aq b;
    private l c;
    private Map<Long, aj> d;
    private long e;

    protected /* synthetic */ Object c() {
        return d();
    }

    protected an d() {
        return new an(this);
    }

    public ap a(aq aqVar) {
        this.b = aqVar;
        return this;
    }

    public ap a(List<as> list) {
        this.a = list;
        return this;
    }

    public ap a(l lVar) {
        this.c = lVar;
        return this;
    }

    public ap a(Map<Long, aj> map) {
        this.d = map;
        return this;
    }

    public ap a(long j) {
        this.e = j;
        return this;
    }
}
