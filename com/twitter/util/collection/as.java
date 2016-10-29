package com.twitter.util.collection;

import java.util.Collection;
import java.util.Set;

/* compiled from: Twttr */
class as<T> extends ar<T> {
    public /* synthetic */ d a(Object obj) {
        return super.c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return super.j();
    }

    as(int i) {
        if (i > 1) {
            this.a = b(i);
        }
    }

    protected Set<T> b(int i) {
        return MutableSet.a();
    }
}
