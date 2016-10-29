package com.twitter.model.people;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import cto;
import java.util.List;

/* compiled from: Twttr */
public abstract class a {
    public final l a;
    public final String b;
    public final aj c;
    public final List<am> d;
    public final List<Tweet> e;
    public final List<String> f;

    public a(c cVar) {
        this.a = (l) e.b(cVar.a, l.b);
        this.b = e.b(cVar.b);
        this.c = (aj) e.b(cVar.c, aj.b);
        this.d = cto.c(e.a(cVar.d));
        this.e = cto.c(e.a(cVar.e));
        this.f = cto.c(e.a(cVar.f));
    }
}
