package defpackage;

import cta;
import ctf;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctv */
class ctv extends cta<T> {
    final /* synthetic */ ctu a;
    private final Iterator<? extends Iterable<? extends T>> b;
    private Iterator<? extends T> c;

    ctv(ctu ctu) {
        this.a = ctu;
        this.b = this.a.a.iterator();
        this.c = a(this.b);
    }

    public boolean hasNext() {
        while (!this.c.hasNext() && this.b.hasNext()) {
            this.c = a(this.b);
        }
        return this.c.hasNext();
    }

    protected T a() {
        return this.c.next();
    }

    private Iterator<? extends T> a(Iterator<? extends Iterable<? extends T>> it) {
        if (!it.hasNext()) {
            return ctf.c();
        }
        Iterable iterable = (Iterable) it.next();
        return iterable != null ? iterable.iterator() : ctf.c();
    }
}
