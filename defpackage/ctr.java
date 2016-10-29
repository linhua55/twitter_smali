package defpackage;

import cta;

/* compiled from: Twttr */
/* renamed from: ctr */
class ctr extends cta<T> {
    final /* synthetic */ ctq a;
    private final cui<? extends T> b;
    private final cui<? extends T> c;

    ctr(ctq ctq) {
        this.a = ctq;
        this.b = new cui(this.a.a.iterator());
        this.c = new cui(this.a.b.iterator());
    }

    public boolean hasNext() {
        return this.b.hasNext() || this.c.hasNext();
    }

    protected T a() {
        if (!this.c.hasNext()) {
            return this.b.next();
        }
        if (!this.b.hasNext()) {
            return this.c.next();
        }
        if (this.a.c.compare(this.b.c(), this.c.c()) < 0) {
            return this.b.next();
        }
        return this.c.next();
    }
}
