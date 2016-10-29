package rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import rx.an;
import rx.exceptions.e;

/* compiled from: Twttr */
public final class ak implements an {
    private LinkedList<an> a;
    private volatile boolean b;

    public ak(an... anVarArr) {
        this.a = new LinkedList(Arrays.asList(anVarArr));
    }

    public ak(an anVar) {
        this.a = new LinkedList();
        this.a.add(anVar);
    }

    public boolean b() {
        return this.b;
    }

    public void a(an anVar) {
        if (!anVar.b()) {
            if (!this.b) {
                synchronized (this) {
                    if (this.b) {
                    } else {
                        LinkedList linkedList = this.a;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.a = linkedList;
                        }
                        linkedList.add(anVar);
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
                LinkedList linkedList = this.a;
                if (this.b || linkedList == null) {
                    return;
                }
                boolean remove = linkedList.remove(anVar);
                if (remove) {
                    anVar.K_();
                }
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
                a(collection);
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
