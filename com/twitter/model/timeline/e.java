package com.twitter.model.timeline;

import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class e {
    public static final n<e> a;
    public long b;
    public int c;
    public List<g> d;
    public int e;

    static {
        a = new f();
    }

    public e(long j, int i, List<g> list, int i2) {
        this.b = j;
        this.c = i;
        this.d = ImmutableList.a(list);
        this.e = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.e == eVar.e && this.c == eVar.c && this.b == eVar.b) {
            return this.d.equals(eVar.d);
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.a(this.b) * 31) + ObjectUtils.a(this.d)) * 31) + this.e) * 31) + this.c;
    }
}
