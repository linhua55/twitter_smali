package com.twitter.android.people.adapters;

import com.twitter.model.people.g;
import com.twitter.util.aj;
import ctc;
import cto;
import java.util.List;

/* compiled from: Twttr */
public abstract class m<T> extends k {
    public final List<T> a;
    public final String b;

    protected m(g gVar, Iterable<T> iterable) {
        super(gVar);
        this.a = cto.c(iterable);
        this.b = aj.a("__", cto.b(iterable, a()));
    }

    protected ctc<T, String> a() {
        return new n(this);
    }
}
