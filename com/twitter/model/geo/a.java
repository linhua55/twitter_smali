package com.twitter.model.geo;

import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class a {
    public static final n<a> a;
    public final List<d> b;

    static {
        a = new c();
    }

    private a(List<d> list) {
        this.b = com.twitter.util.collection.n.a(list);
    }

    public static a a(List<d> list) {
        if (list == null || list.size() < 4) {
            return null;
        }
        return new a(list);
    }

    public d a() {
        return (d) this.b.get(0);
    }

    public d b() {
        return (d) this.b.get(2);
    }
}
