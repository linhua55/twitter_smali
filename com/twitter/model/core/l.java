package com.twitter.model.core;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public abstract class l<T extends e, EL extends j<T>, B extends l<T, EL, B>> extends f<EL> {
    private EL a;
    private n<T> b;

    protected abstract EL a(List<T> list);

    protected /* synthetic */ Object c() {
        return f();
    }

    protected l() {
        this.a = a(null);
    }

    protected l(int i) {
        n nVar = null;
        this.a = a(null);
        if (i > 0) {
            nVar = a(i);
        }
        this.b = nVar;
    }

    protected l(EL el) {
        this.a = el;
    }

    public boolean d() {
        return this.a.c() && CollectionUtils.a(this.b);
    }

    public B e() {
        if (!d()) {
            Iterable<e> iterable = (Iterable) e.b(this.b, this.a);
            this.b = a(this.b != null ? this.b.i() : this.a.b());
            for (e b : iterable) {
                this.b.c(ObjectUtils.a(b.b().q()));
            }
        }
        return (l) ObjectUtils.a((Object) this);
    }

    public B a(EL el) {
        if (el == null) {
            el = a(null);
        }
        this.a = el;
        this.b = null;
        return (l) ObjectUtils.a((Object) this);
    }

    public B a(T t) {
        g().c((Object) t);
        return (l) ObjectUtils.a((Object) this);
    }

    public B a(Iterable<? extends T> iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a((e) it.next());
        }
        return (l) ObjectUtils.a((Object) this);
    }

    public B b(T t) {
        if (this.b != null || this.a.d().contains(t)) {
            g().d((Object) t);
        }
        return (l) ObjectUtils.a((Object) this);
    }

    protected EL f() {
        if (this.b != null) {
            this.a = a((List) this.b.q());
            this.b = null;
        }
        return this.a;
    }

    private n<T> g() {
        if (this.b == null) {
            int b = this.a.b();
            if (b > 1) {
                b += 2;
            }
            this.b = a(b).c(this.a);
            this.a = a(null);
        }
        return this.b;
    }

    private static <T extends e> n<T> a(int i) {
        return n.a(e.e, i);
    }
}
