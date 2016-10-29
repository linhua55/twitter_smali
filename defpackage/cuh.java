package defpackage;

import cta;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cuh */
class cuh extends cta<T> {
    final /* synthetic */ cug a;
    private final Iterator<T> b;
    private int c;

    cuh(cug cug) {
        this.a = cug;
        this.b = this.a.a.iterator();
    }

    public boolean hasNext() {
        return this.b.hasNext() && this.c < this.a.b;
    }

    protected T a() {
        this.c++;
        return this.b.next();
    }
}
