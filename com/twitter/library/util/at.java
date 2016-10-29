package com.twitter.library.util;

import com.twitter.util.collection.ReferenceList;
import com.twitter.util.y;
import com.twitter.util.z;
import java.util.Iterator;

/* compiled from: Twttr */
public class at<T> extends y<T> {
    private final ReferenceList<z<T>> a;

    public at() {
        this.a = ReferenceList.a(5);
    }

    public synchronized boolean a(z<T> zVar) {
        boolean z;
        if (this.a.a(zVar)) {
            z = false;
        } else {
            this.a.b(zVar);
            z = true;
        }
        return z;
    }

    public synchronized boolean b(z<T> zVar) {
        return this.a.c(zVar);
    }

    public synchronized void a(T t) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((z) it.next()).a(t);
        }
    }
}
