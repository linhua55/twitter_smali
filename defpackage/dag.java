package defpackage;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.util.b;
import rx.o;

/* compiled from: Twttr */
/* renamed from: dag */
public final class dag<T> {
    static final Object a;
    static final Object b;
    static final Object c;
    private final o<? extends T> d;

    private dag(o<? extends T> oVar) {
        this.d = oVar;
    }

    public static <T> dag<T> a(o<? extends T> oVar) {
        return new dag(oVar);
    }

    public T a() {
        return b(this.d.m());
    }

    private T b(o<? extends T> oVar) {
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        b.a(countDownLatch, oVar.b(new dah(this, countDownLatch, atomicReference2, atomicReference)));
        if (atomicReference2.get() == null) {
            return atomicReference.get();
        }
        if (atomicReference2.get() instanceof RuntimeException) {
            throw ((RuntimeException) atomicReference2.get());
        }
        throw new RuntimeException((Throwable) atomicReference2.get());
    }

    static {
        a = new Object();
        b = new Object();
        c = new Object();
    }
}
