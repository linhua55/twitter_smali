package com.twitter.model.ads;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class e {
    public static final n<e> a;
    public final Map<Long, List<a>> b;

    static {
        a = new g(null);
    }

    public e(h hVar) {
        this.b = hVar.a;
    }

    public boolean a(long j) {
        if (this.b.containsKey(Long.valueOf(j))) {
            for (a aVar : (List) this.b.get(Long.valueOf(j))) {
                if (aVar.f) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof e) && a((e) obj));
    }

    public boolean a(e eVar) {
        return this == eVar || (eVar != null && ObjectUtils.a(this.b, eVar.b));
    }

    public int hashCode() {
        return ObjectUtils.b(this.b);
    }
}
