package com.twitter.model.ads;

import com.twitter.util.object.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public final class h extends f<e> {
    Map<Long, List<a>> a;

    public h() {
        this.a = new HashMap();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public h a(Map<Long, List<a>> map) {
        if (map == null) {
            this.a = new HashMap();
        } else {
            this.a = map;
        }
        return this;
    }

    public h a(long j, a aVar) {
        if (aVar != null) {
            if (!this.a.containsKey(Long.valueOf(j))) {
                this.a.put(Long.valueOf(j), new ArrayList());
            }
            ((List) this.a.get(Long.valueOf(j))).add(aVar);
        }
        return this;
    }

    protected e d() {
        return new e(this);
    }
}
