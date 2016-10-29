package com.twitter.util.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
class o<T> extends n<T> {
    protected List<T> a;

    public /* synthetic */ d a(Object obj) {
        return super.c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return super.k();
    }

    o() {
    }

    o(int i) {
        if (i > 1) {
            d(i);
        }
    }

    protected int l() {
        return this.a != null ? this.a.size() : 0;
    }

    protected void c(int i) {
        if (this.a instanceof ArrayList) {
            ((ArrayList) this.a).ensureCapacity(i);
        }
    }

    protected boolean m() {
        return this.a != null;
    }

    protected void d(int i) {
        this.a = i != 0 ? new ArrayList(i) : new ArrayList();
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
        Collections.reverse(this.a);
    }

    protected List<T> p() {
        List<T> a = ImmutableList.a(this.a);
        this.a = null;
        return a;
    }
}
