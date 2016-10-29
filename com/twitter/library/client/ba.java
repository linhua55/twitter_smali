package com.twitter.library.client;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
class ba<T, S extends AsyncOperation<T, ?>> implements c<T, S> {
    private final CopyOnWriteArraySet<c<T, S>> a;

    ba() {
        this.a = new CopyOnWriteArraySet();
    }

    public final void b(S s) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(s);
        }
    }

    public void a(T t, S s) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(t, s);
        }
    }

    public void a(S s) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(s);
        }
    }

    public void a(c<T, S> cVar) {
        if (cVar != null && !this.a.contains(cVar)) {
            this.a.add(cVar);
        }
    }

    public void b(c<T, S> cVar) {
        if (cVar != null) {
            this.a.remove(cVar);
        }
    }
}
