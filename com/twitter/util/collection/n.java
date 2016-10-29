package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import defpackage.ctf;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public abstract class n<T> extends f<List<T>> implements d<T, List<T>> {
    private T a;
    private List<T> b;

    protected abstract void c(int i);

    protected abstract void d(int i);

    protected abstract void e(T t);

    protected abstract void f(T t);

    protected abstract int l();

    protected abstract boolean m();

    protected abstract void n();

    protected abstract Iterator<T> o();

    protected abstract List<T> p();

    public /* synthetic */ d a(Object obj) {
        return c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return k();
    }

    public static <T> n<T> d() {
        return a(0);
    }

    public static <T> n<T> a(int i) {
        return new o(i);
    }

    public static <T> n<T> e() {
        return b(0);
    }

    public static <T> n<T> b(int i) {
        return new q(i);
    }

    public static <T> n<T> a(Comparator<? super T> comparator) {
        return a((Comparator) comparator, 0);
    }

    public static <T> n<T> a(Comparator<? super T> comparator, int i) {
        return new p(comparator, i);
    }

    public static <T> List<T> g() {
        return ImmutableList.c();
    }

    public static <T> List<T> b(T t) {
        return t != null ? ImmutableList.b(t) : g();
    }

    @SafeVarargs
    public static <T> List<T> a(T t, T... tArr) {
        return (List) a(tArr.length + 1).c((Object) t).b((Object[]) tArr).q();
    }

    public static <T> List<T> a(T[] tArr) {
        return !CollectionUtils.a((Object[]) tArr) ? (List) a(tArr.length + 1).b((Object[]) tArr).q() : g();
    }

    public static <T> List<T> a(Iterable<? extends T> iterable) {
        if (iterable == null) {
            return g();
        }
        if (iterable instanceof List) {
            return a((List) ObjectUtils.a((Object) iterable));
        }
        return (List) (iterable instanceof Collection ? a(((Collection) iterable).size()) : d()).c((Iterable) iterable).q();
    }

    public static <T> List<T> a(List<? extends T> list) {
        if (CollectionUtils.b((Collection) list)) {
            return g();
        }
        if (CollectionUtils.a((Collection) list)) {
            return (List) ObjectUtils.a((Object) list);
        }
        int size = list.size();
        if (size == 1) {
            return b(CollectionUtils.b((List) list));
        }
        List a = list instanceof au ? MutableList.a(((au) ObjectUtils.a((Object) list)).comparator(), size) : MutableList.a(size);
        for (Object next : list) {
            if (next != null) {
                a.add(next);
            }
        }
        return ImmutableList.a(a);
    }

    public static <T extends Comparable<T>> List<T> b(Iterable<? extends T> iterable) {
        return a(ObjectUtils.b(), (Iterable) iterable);
    }

    public static <T> List<T> a(Comparator<? super T> comparator, Iterable<? extends T> iterable) {
        if (iterable == null) {
            return g();
        }
        if (iterable instanceof List) {
            return a((Comparator) comparator, (List) ObjectUtils.a((Object) iterable));
        }
        return (List) (iterable instanceof Collection ? a((Comparator) comparator, ((Collection) iterable).size()) : a((Comparator) comparator)).c((Iterable) iterable).q();
    }

    public static <T> List<T> a(Comparator<? super T> comparator, List<? extends T> list) {
        if (CollectionUtils.b((Collection) list)) {
            return g();
        }
        if (CollectionUtils.a((Collection) list) && (list instanceof au)) {
            return (List) ObjectUtils.a((Object) list);
        }
        return (List) a((Comparator) comparator, list.size()).c((Iterable) list).q();
    }

    protected n() {
    }

    public final boolean h() {
        return i() == 0;
    }

    public final int i() {
        if (this.b != null) {
            return this.b.size();
        }
        if (this.a != null) {
            return 1;
        }
        return l();
    }

    public final n<T> c(T t) {
        if (t != null) {
            if (this.b != null) {
                throw new IllegalStateException("The list can't be modified once built.");
            } else if (m()) {
                e((Object) t);
            } else if (this.a != null) {
                d(0);
                e(this.a);
                this.a = null;
                e((Object) t);
            } else {
                this.a = t;
            }
        }
        return this;
    }

    @SafeVarargs
    public final n<T> b(T... tArr) {
        if (tArr != null) {
            e(i() + tArr.length);
            for (Object c : tArr) {
                c(c);
            }
        }
        return this;
    }

    public final n<T> c(Iterable<? extends T> iterable) {
        if (iterable != null) {
            if (iterable instanceof Collection) {
                e(((Collection) iterable).size() + i());
            }
            for (Object c : iterable) {
                c(c);
            }
        }
        return this;
    }

    public final n<T> d(T t) {
        if (t != null) {
            if (this.b != null) {
                throw new IllegalStateException("The list can't be modified once built.");
            } else if (m()) {
                f(t);
            } else if (t.equals(this.a)) {
                this.a = null;
            }
        }
        return this;
    }

    public final n<T> d(Iterable<? extends T> iterable) {
        if (iterable != null) {
            for (Object d : iterable) {
                d(d);
            }
        }
        return this;
    }

    public final Iterator<T> iterator() {
        if (this.b != null) {
            return this.b.iterator();
        }
        if (m()) {
            return o();
        }
        if (this.a != null) {
            return ctf.a(this.a);
        }
        return ctf.c();
    }

    public final n<T> j() {
        if (this.b != null) {
            throw new IllegalStateException("The list can't be modified once built.");
        }
        if (m()) {
            n();
        }
        return this;
    }

    protected List<T> k() {
        if (this.b != null) {
            return this.b;
        }
        List<T> p;
        if (m()) {
            p = p();
        } else if (this.a != null) {
            p = b(this.a);
            this.a = null;
        } else {
            p = g();
        }
        this.b = p;
        return p;
    }

    private void e(int i) {
        if (i <= 1) {
            return;
        }
        if (m()) {
            c(i);
            return;
        }
        d(i);
        if (this.a != null) {
            e(this.a);
            this.a = null;
        }
    }
}
