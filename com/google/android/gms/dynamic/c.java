package com.google.android.gms.dynamic;

import java.util.Iterator;

class c implements n<T> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(T t) {
        this.a.a = t;
        Iterator it = this.a.c.iterator();
        while (it.hasNext()) {
            ((i) it.next()).a(this.a.a);
        }
        this.a.c.clear();
        this.a.b = null;
    }
}
