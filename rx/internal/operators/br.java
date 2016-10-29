package rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.p;
import rx.s;

/* compiled from: Twttr */
final class br implements p<T> {
    final /* synthetic */ AtomicReference a;

    br(AtomicReference atomicReference) {
        this.a = atomicReference;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super T> amVar) {
        while (true) {
            bu buVar = (bu) this.a.get();
            if (buVar == null || buVar.b()) {
                bu buVar2 = new bu(this.a);
                buVar2.d();
                if (this.a.compareAndSet(buVar, buVar2)) {
                    buVar = buVar2;
                } else {
                    continue;
                }
            }
            s innerProducer = new InnerProducer(buVar, amVar);
            if (buVar.a((InnerProducer) innerProducer)) {
                amVar.a((an) innerProducer);
                amVar.a(innerProducer);
                return;
            }
        }
    }
}
