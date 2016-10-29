package com.twitter.library.service;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.android.service.u;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: Twttr */
public final class k<T> extends ac<T> {
    private final LinkedList<ac<T>> a;
    private long b;

    public k() {
        this.a = new LinkedList();
    }

    public k<T> a(ac<T> acVar) {
        this.a.add(acVar);
        return this;
    }

    public boolean a(ab<T> abVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ac acVar = (ac) it.next();
            if (acVar.a(abVar)) {
                this.b = acVar.b(abVar);
                return true;
            }
        }
        return false;
    }

    public boolean a(u uVar, ab<T> abVar) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ac acVar = (ac) it.next();
            if (acVar.a(uVar, abVar)) {
                this.b = acVar.b(abVar);
                return true;
            }
        }
        return false;
    }

    public long b(ab<T> abVar) {
        return this.b;
    }
}
