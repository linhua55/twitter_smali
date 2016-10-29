package rx.subjects;

import cys;
import defpackage.cyt;
import defpackage.dbl;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.internal.operators.NotificationLite;
import rx.p;

/* compiled from: Twttr */
final class SubjectSubscriptionManager<T> extends AtomicReference<m<T>> implements p<T> {
    private static final long serialVersionUID = 6035251036011671568L;
    boolean active;
    volatile Object latest;
    public final NotificationLite<T> nl;
    cys<n<T>> onAdded;
    cys<n<T>> onStart;
    cys<n<T>> onTerminated;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public SubjectSubscriptionManager() {
        super(m.e);
        this.active = true;
        this.onStart = cyt.a();
        this.onAdded = cyt.a();
        this.onTerminated = cyt.a();
        this.nl = NotificationLite.a();
    }

    public void a(am<? super T> amVar) {
        n nVar = new n(amVar);
        a(amVar, nVar);
        this.onStart.call(nVar);
        if (!amVar.b() && a(nVar) && amVar.b()) {
            b(nVar);
        }
    }

    void a(am<? super T> amVar, n<T> nVar) {
        amVar.a(dbl.a(new l(this, nVar)));
    }

    void a(Object obj) {
        this.latest = obj;
    }

    Object a() {
        return this.latest;
    }

    n<T>[] b() {
        return ((m) get()).b;
    }

    boolean a(n<T> nVar) {
        m mVar;
        do {
            mVar = (m) get();
            if (mVar.a) {
                this.onTerminated.call(nVar);
                return false;
            }
        } while (!compareAndSet(mVar, mVar.a(nVar)));
        this.onAdded.call(nVar);
        return true;
    }

    void b(n<T> nVar) {
        m mVar;
        m b;
        do {
            mVar = (m) get();
            if (!mVar.a) {
                b = mVar.b(nVar);
                if (b == mVar) {
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(mVar, b));
    }

    n<T>[] b(Object obj) {
        a(obj);
        return ((m) get()).b;
    }

    n<T>[] c(Object obj) {
        a(obj);
        this.active = false;
        if (((m) get()).a) {
            return m.c;
        }
        return ((m) getAndSet(m.d)).b;
    }
}
