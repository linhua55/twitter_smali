package defpackage;

import cta;
import ctf;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cuf */
class cuf extends cta<OUT> {
    final /* synthetic */ cue a;
    private final Iterator<? extends IN> b;
    private Iterator<? extends OUT> c;

    cuf(cue cue) {
        this.a = cue;
        this.b = this.a.a.iterator();
        this.c = a(this.b);
    }

    public boolean hasNext() {
        while (!this.c.hasNext() && this.b.hasNext()) {
            this.c = a(this.b);
        }
        return this.c.hasNext();
    }

    protected OUT a() {
        return this.c.next();
    }

    private Iterator<? extends OUT> a(Iterator<? extends IN> it) {
        if (!it.hasNext()) {
            return ctf.c();
        }
        Iterable iterable = (Iterable) this.a.b.a(it.next());
        return iterable != null ? iterable.iterator() : ctf.c();
    }
}
