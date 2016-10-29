package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import rx.an;

/* compiled from: Twttr */
/* renamed from: dbj */
public final class dbj implements an {
    final AtomicReference<dbk> a;

    public dbj() {
        this.a = new AtomicReference(new dbk(false, dbl.a()));
    }

    public boolean b() {
        return ((dbk) this.a.get()).a;
    }

    public void K_() {
        dbk dbk;
        AtomicReference atomicReference = this.a;
        do {
            dbk = (dbk) atomicReference.get();
            if (dbk.a) {
                return;
            }
        } while (!atomicReference.compareAndSet(dbk, dbk.a()));
        dbk.b.K_();
    }

    public void a(an anVar) {
        if (anVar == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        dbk dbk;
        AtomicReference atomicReference = this.a;
        do {
            dbk = (dbk) atomicReference.get();
            if (dbk.a) {
                anVar.K_();
                return;
            }
        } while (!atomicReference.compareAndSet(dbk, dbk.a(anVar)));
        dbk.b.K_();
    }

    public an c() {
        return ((dbk) this.a.get()).b;
    }
}
