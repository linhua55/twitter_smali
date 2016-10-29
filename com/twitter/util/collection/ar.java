package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import defpackage.ctf;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

/* compiled from: Twttr */
public abstract class ar<T> extends f<Set<T>> implements d<T, Set<T>> {
    protected Set<T> a;
    private T b;
    private Set<T> c;

    protected abstract Set<T> b(int i);

    public /* synthetic */ d a(Object obj) {
        return c(obj);
    }

    public /* synthetic */ Collection a() {
        return (Collection) super.q();
    }

    protected /* synthetic */ Object c() {
        return j();
    }

    public static <T> ar<T> d() {
        return a(0);
    }

    public static <T> ar<T> a(int i) {
        return new as(i);
    }

    public static <T extends Comparable<T>> ar<T> e() {
        return a(ObjectUtils.b());
    }

    public static <T> ar<T> a(Comparator<? super T> comparator) {
        return new at(comparator);
    }

    public static <T> Set<T> g() {
        return ImmutableSet.c();
    }

    public static <T> Set<T> b(T t) {
        return t != null ? ImmutableSet.b(t) : g();
    }

    @SafeVarargs
    public static <T> Set<T> a(T t, T... tArr) {
        return (Set) a(tArr.length + 1).c((Object) t).a((Object[]) tArr).q();
    }

    public static <T> Set<T> a(Iterable<? extends T> iterable) {
        if (iterable == null) {
            return g();
        }
        if (iterable instanceof Set) {
            return a((Set) ObjectUtils.a((Object) iterable));
        }
        return (Set) (iterable instanceof Collection ? a(((Collection) iterable).size()) : d()).b((Iterable) iterable).q();
    }

    public static <T> Set<T> a(Set<? extends T> set) {
        if (CollectionUtils.b((Collection) set)) {
            return g();
        }
        if (CollectionUtils.a((Collection) set)) {
            return (Set) ObjectUtils.a((Object) set);
        }
        int size = set.size();
        if (size == 1) {
            return b(CollectionUtils.b((Iterable) set));
        }
        Set a = set instanceof au ? MutableSet.a(((au) ObjectUtils.a((Object) set)).comparator()) : MutableSet.a(size);
        for (Object next : set) {
            if (next != null) {
                a.add(next);
            }
        }
        return ImmutableSet.a(a);
    }

    public static <T> Set<T> a(Comparator<? super T> comparator, Set<? extends T> set) {
        if (CollectionUtils.b((Collection) set)) {
            return g();
        }
        if (CollectionUtils.a((Collection) set) && (set instanceof au)) {
            return (Set) ObjectUtils.a((Object) set);
        }
        return (Set) a((Comparator) comparator).b((Iterable) set).q();
    }

    protected ar() {
    }

    public final int h() {
        if (this.c != null) {
            return this.c.size();
        }
        if (this.a != null) {
            return this.a.size();
        }
        if (this.b != null) {
            return 1;
        }
        return 0;
    }

    public final ar<T> c(T t) {
        if (t != null) {
            if (this.c != null) {
                throw new IllegalStateException("The set can't be modified once built.");
            } else if (this.a != null) {
                this.a.add(t);
            } else if (this.b != null) {
                this.a = b(0);
                this.a.add(this.b);
                this.b = null;
                this.a.add(t);
            } else {
                this.b = t;
            }
        }
        return this;
    }

    @SafeVarargs
    public final ar<T> a(T... tArr) {
        if (tArr != null) {
            for (Object c : tArr) {
                c(c);
            }
        }
        return this;
    }

    public final ar<T> b(Iterable<? extends T> iterable) {
        if (iterable != null) {
            for (Object c : iterable) {
                c(c);
            }
        }
        return this;
    }

    public final ar<T> d(T t) {
        if (t != null) {
            if (this.c != null) {
                throw new IllegalStateException("The set can't be modified once built.");
            } else if (this.a != null) {
                this.a.remove(t);
            } else if (t.equals(this.b)) {
                this.b = null;
            }
        }
        return this;
    }

    public final ar<T> c(Iterable<? extends T> iterable) {
        if (iterable != null) {
            for (Object d : iterable) {
                d(d);
            }
        }
        return this;
    }

    public final ar<T> i() {
        if (this.c != null) {
            throw new IllegalStateException("The set can't be modified once built.");
        }
        if (this.a != null) {
            this.a.clear();
        } else if (this.b != null) {
            this.b = null;
        }
        return this;
    }

    public final Iterator<T> iterator() {
        if (this.c != null) {
            return this.c.iterator();
        }
        if (this.a != null) {
            return this.a.iterator();
        }
        if (this.b != null) {
            return ctf.a(this.b);
        }
        return ctf.c();
    }

    protected Set<T> j() {
        if (this.c != null) {
            return this.c;
        }
        Set<T> a;
        if (this.a != null) {
            a = ImmutableSet.a(this.a);
            this.a = null;
        } else if (this.b != null) {
            a = b(this.b);
            this.b = null;
        } else {
            a = g();
        }
        this.c = a;
        return a;
    }
}
