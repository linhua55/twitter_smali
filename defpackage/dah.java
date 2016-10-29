package defpackage;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;

/* compiled from: Twttr */
/* renamed from: dah */
class dah extends am<T> {
    final /* synthetic */ CountDownLatch a;
    final /* synthetic */ AtomicReference b;
    final /* synthetic */ AtomicReference c;
    final /* synthetic */ dag d;

    dah(dag dag, CountDownLatch countDownLatch, AtomicReference atomicReference, AtomicReference atomicReference2) {
        this.d = dag;
        this.a = countDownLatch;
        this.b = atomicReference;
        this.c = atomicReference2;
    }

    public void bs_() {
        this.a.countDown();
    }

    public void a(Throwable th) {
        this.b.set(th);
        this.a.countDown();
    }

    public void b_(T t) {
        this.c.set(t);
    }
}
