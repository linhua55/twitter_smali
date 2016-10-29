package com.twitter.util.collection;

import java.util.Collection;
import java.util.Comparator;
import java.util.Set;

/* compiled from: Twttr */
class at<T> extends ar<T> implements au<T> {
    private final Comparator<? super T> b;

    public /* synthetic */ d a(Object obj) {
        return super.c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return super.j();
    }

    at(Comparator<? super T> comparator) {
        this.b = comparator;
    }

    public Comparator<? super T> comparator() {
        return this.b;
    }

    protected Set<T> b(int i) {
        return MutableSet.a(this.b);
    }
}
