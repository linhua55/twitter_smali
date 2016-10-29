package com.twitter.android.interestpicker;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
public abstract class h {
    private static final n<h> e;
    public final String a;
    public final long b;
    public final long c;
    public List<h> d;

    static {
        e = s.a(l.a(aw.class, new az()));
    }

    protected h(String str, long j, long j2, List<h> list) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = com.twitter.util.collection.n.a((List) list);
    }

    protected h(i iVar) {
        this.a = (String) e.a(iVar.a);
        this.b = iVar.b;
        this.c = iVar.c;
        this.d = (List) ObjectUtils.a(com.twitter.util.collection.n.a(iVar.d));
    }

    public void a(h hVar) {
        this.d = f.a(this.d, hVar);
    }
}
