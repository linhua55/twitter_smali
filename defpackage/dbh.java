package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import rx.an;

/* compiled from: Twttr */
/* renamed from: dbh */
public final class dbh implements an {
    final AtomicReference<dbi> a;

    public dbh() {
        this.a = new AtomicReference(new dbi(false, dbl.a()));
    }

    public boolean b() {
        return ((dbi) this.a.get()).a;
    }

    public void K_() {
        dbi dbi;
        AtomicReference atomicReference = this.a;
        do {
            dbi = (dbi) atomicReference.get();
            if (dbi.a) {
                return;
            }
        } while (!atomicReference.compareAndSet(dbi, dbi.a()));
        dbi.b.K_();
    }

    public void a(an anVar) {
        if (anVar == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        AtomicReference atomicReference = this.a;
        dbi dbi;
        do {
            dbi = (dbi) atomicReference.get();
            if (dbi.a) {
                anVar.K_();
                return;
            }
        } while (!atomicReference.compareAndSet(dbi, dbi.a(anVar)));
    }
}
