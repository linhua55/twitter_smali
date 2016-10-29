package com.twitter.model.people;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
abstract class c<B extends c<B, T>, T extends a> extends f<T> {
    private l a;
    private String b;
    private aj c;
    private Iterable<am> d;
    private Iterable<Tweet> e;
    private Iterable<String> f;

    c() {
    }

    public B a(l lVar) {
        this.a = lVar;
        return (c) ObjectUtils.a(this);
    }

    public B a(String str) {
        this.b = str;
        return (c) ObjectUtils.a(this);
    }

    public B a(aj ajVar) {
        this.c = ajVar;
        return (c) ObjectUtils.a(this);
    }

    public B a(Iterable<am> iterable) {
        this.d = iterable;
        return (c) ObjectUtils.a(this);
    }

    public B b(Iterable<Tweet> iterable) {
        this.e = iterable;
        return (c) ObjectUtils.a(this);
    }

    public B c(Iterable<String> iterable) {
        this.f = iterable;
        return (c) ObjectUtils.a(this);
    }
}
