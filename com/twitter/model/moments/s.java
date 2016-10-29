package com.twitter.model.moments;

import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
public class s {
    public static final s a;
    public final String b;
    public final List<t> c;

    static {
        a = new s("", n.g());
    }

    public s(String str, List<t> list) {
        this.b = str;
        this.c = n.a(list);
    }

    public List<t> a() {
        if (this.b == null) {
            return this.c;
        }
        n d = n.d();
        for (t tVar : this.c) {
            if (!ObjectUtils.a(tVar.a, this.b)) {
                d.c(tVar);
            }
        }
        return (List) d.q();
    }

    public boolean b() {
        return this.c.isEmpty();
    }
}
