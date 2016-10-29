package com.twitter.model.core;

import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class bw {
    public static final bw a;
    public static final n<bw> b;
    private final List<bp> c;

    static {
        a = new bw(com.twitter.util.collection.n.g());
        b = new by();
    }

    public bw(List<bp> list) {
        this.c = com.twitter.util.collection.n.a(list);
    }

    public List<bp> a() {
        return this.c;
    }

    public boolean b() {
        return !this.c.isEmpty();
    }

    public bp a(List<DomainType> list) {
        List b = b(list);
        if (b.isEmpty()) {
            return null;
        }
        Collections.sort(b, bp.b);
        return (bp) b.get(0);
    }

    protected List<bp> b(List<DomainType> list) {
        if (!b()) {
            return com.twitter.util.collection.n.g();
        }
        List<bp> arrayList = new ArrayList(a().size());
        for (bp bpVar : a()) {
            if (list == null || list.contains(bpVar.c.c)) {
                arrayList.add(bpVar);
            }
        }
        return arrayList;
    }
}
