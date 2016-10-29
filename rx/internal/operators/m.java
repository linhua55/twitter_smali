package rx.internal.operators;

import cys;
import dbg;
import defpackage.dai;
import defpackage.dbl;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import rx.am;
import rx.an;
import rx.p;

/* compiled from: Twttr */
public final class m<T> implements p<T> {
    volatile dbg a;
    final AtomicInteger b;
    final ReentrantLock c;
    private final dai<? extends T> d;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public m(dai<? extends T> dai__extends_T) {
        this.a = new dbg();
        this.b = new AtomicInteger(0);
        this.c = new ReentrantLock();
        this.d = dai__extends_T;
    }

    public void a(am<? super T> amVar) {
        this.c.lock();
        if (this.b.incrementAndGet() == 1) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            try {
                this.d.d(a((am) amVar, atomicBoolean));
                if (atomicBoolean.get()) {
                    this.c.unlock();
                }
            } catch (Throwable th) {
                if (atomicBoolean.get()) {
                    this.c.unlock();
                }
            }
        } else {
            try {
                a((am) amVar, this.a);
            } finally {
                this.c.unlock();
            }
        }
    }

    private cys<an> a(am<? super T> amVar, AtomicBoolean atomicBoolean) {
        return new n(this, amVar, atomicBoolean);
    }

    void a(am<? super T> amVar, dbg dbg) {
        amVar.a(a(dbg));
        this.d.a(new o(this, amVar, amVar, dbg));
    }

    private an a(dbg dbg) {
        return dbl.a(new p(this, dbg));
    }
}
