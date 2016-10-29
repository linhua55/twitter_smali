package com.twitter.model.search;

import com.twitter.model.core.e;
import com.twitter.model.core.f;
import com.twitter.model.core.j;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class a extends e {
    public static final n<a> a;
    public static final n<j<a>> b;

    public /* synthetic */ f b() {
        return a();
    }

    static {
        a = new c();
        b = j.a(a);
    }

    a(b bVar) {
        super(bVar);
    }

    public b a() {
        return new b(this);
    }
}
