package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import rx.an;

/* compiled from: Twttr */
/* renamed from: dbe */
public final class dbe implements an {
    static final cyr b;
    final AtomicReference<cyr> a;

    public dbe() {
        this.a = new AtomicReference();
    }

    private dbe(cyr cyr) {
        this.a = new AtomicReference(cyr);
    }

    public static dbe c() {
        return new dbe();
    }

    public static dbe a(cyr cyr) {
        return new dbe(cyr);
    }

    public boolean b() {
        return this.a.get() == b;
    }

    public final void K_() {
        if (((cyr) this.a.get()) != b) {
            cyr cyr = (cyr) this.a.getAndSet(b);
            if (cyr != null && cyr != b) {
                cyr.a();
            }
        }
    }

    static {
        b = new dbf();
    }
}
