package com.twitter.util.collection;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class ReferenceList<T> implements Iterable<T> {
    private final List<Reference<T>> a;
    private final ReferenceFactory b;

    /* compiled from: Twttr */
    enum ReferenceFactory {
        WEAK {
            public <T> Reference<T> a(T t) {
                return new WeakReference(t);
            }
        },
        SOFT {
            public <T> Reference<T> a(T t) {
                return new SoftReference(t);
            }
        };

        public abstract <T> Reference<T> a(T t);
    }

    private ReferenceList(ReferenceFactory referenceFactory) {
        this.a = new ArrayList();
        this.b = referenceFactory;
    }

    private ReferenceList(int i, ReferenceFactory referenceFactory) {
        this.a = new ArrayList(i);
        this.b = referenceFactory;
    }

    public static <T> ReferenceList<T> a() {
        return new ReferenceList(ReferenceFactory.WEAK);
    }

    public static <T> ReferenceList<T> a(int i) {
        return new ReferenceList(i, ReferenceFactory.WEAK);
    }

    public void b() {
        synchronized (this.a) {
            this.a.clear();
        }
    }

    public boolean a(T t) {
        boolean z;
        synchronized (this.a) {
            if (t != null) {
                Iterator it = iterator();
                while (it.hasNext()) {
                    if (it.next().equals(t)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
        }
        return z;
    }

    public void b(T t) {
        synchronized (this.a) {
            c();
            if (t != null) {
                this.a.add(this.b.a(t));
            }
        }
    }

    public boolean c(T t) {
        boolean z;
        synchronized (this.a) {
            c();
            Iterator it = iterator();
            while (it.hasNext()) {
                if (it.next().equals(t)) {
                    it.remove();
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    public void c() {
        synchronized (this.a) {
            List list = this.a;
            for (int size = list.size() - 1; size >= 0; size--) {
                if (((Reference) list.get(size)).get() == null) {
                    list.remove(size);
                }
            }
        }
    }

    public Iterator<T> iterator() {
        return new ae();
    }
}
