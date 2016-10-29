package defpackage;

import cta;
import cto;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctt */
class ctt extends cta<T> {
    static final /* synthetic */ boolean a;
    final /* synthetic */ cts b;
    private Iterator<? extends T> c;
    private int d;

    static {
        a = !cto.class.desiredAssertionStatus();
    }

    ctt(cts cts) {
        this.b = cts;
        this.c = this.b.a.length > 0 ? this.b.a[0].iterator() : null;
        this.d = 1;
    }

    public boolean hasNext() {
        while (this.c != null && !this.c.hasNext() && this.d < this.b.a.length) {
            this.c = this.b.a[this.d].iterator();
            this.d++;
        }
        return this.c != null && this.c.hasNext();
    }

    protected T a() {
        if (a || this.c != null) {
            return this.c.next();
        }
        throw new AssertionError();
    }
}
