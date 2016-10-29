package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.an;
import rx.exceptions.e;

/* compiled from: Twttr */
/* renamed from: dbg */
public final class dbg implements an {
    private Set<an> a;
    private volatile boolean b;

    public boolean b() {
        return this.b;
    }

    public void a(an anVar) {
        if (!anVar.b()) {
            if (!this.b) {
                synchronized (this) {
                    if (this.b) {
                    } else {
                        if (this.a == null) {
                            this.a = new HashSet(4);
                        }
                        this.a.add(anVar);
                        return;
                    }
                }
            }
            anVar.K_();
        }
    }

    public void b(an anVar) {
        if (!this.b) {
            synchronized (this) {
                if (this.b || this.a == null) {
                    return;
                }
                boolean remove = this.a.remove(anVar);
                if (remove) {
                    anVar.K_();
                }
            }
        }
    }

    public void c() {
        if (!this.b) {
            synchronized (this) {
                if (this.b || this.a == null) {
                    return;
                }
                Collection collection = this.a;
                this.a = null;
                dbg.a(collection);
            }
        }
    }

    public void K_() {
        if (!this.b) {
            synchronized (this) {
                if (this.b) {
                    return;
                }
                this.b = true;
                Collection collection = this.a;
                this.a = null;
                dbg.a(collection);
            }
        }
    }

    private static void a(Collection<an> collection) {
        if (collection != null) {
            List list = null;
            for (an K_ : collection) {
                try {
                    K_.K_();
                } catch (Throwable th) {
                    List arrayList;
                    if (list == null) {
                        arrayList = new ArrayList();
                    } else {
                        arrayList = list;
                    }
                    arrayList.add(th);
                    list = arrayList;
                }
            }
            e.a(list);
        }
    }
}
