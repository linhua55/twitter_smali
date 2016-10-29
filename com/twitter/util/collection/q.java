package com.twitter.util.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
class q<T> extends n<T> {
    protected Set<T> a;

    public /* synthetic */ d a(Object obj) {
        return super.c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return super.k();
    }

    q(int i) {
        if (i > 1) {
            d(i);
        }
    }

    protected int l() {
        return this.a != null ? this.a.size() : 0;
    }

    protected void c(int i) {
    }

    protected boolean m() {
        return this.a != null;
    }

    protected void d(int i) {
        this.a = i != 0 ? new LinkedHashSet(i) : new LinkedHashSet();
    }

    protected void e(T t) {
        this.a.add(t);
    }

    protected void f(T t) {
        this.a.remove(t);
    }

    protected Iterator<T> o() {
        return this.a.iterator();
    }

    protected void n() {
        throw new UnsupportedOperationException("Unique lists can't be reversed");
    }

    protected List<T> p() {
        List<T> b = this.a.size() == 1 ? n.b(CollectionUtils.b(this.a)) : n.a(this.a);
        this.a = null;
        return b;
    }
}
