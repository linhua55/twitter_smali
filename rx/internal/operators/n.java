package rx.internal.operators;

import cys;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.am;
import rx.an;

/* compiled from: Twttr */
class n implements cys<an> {
    final /* synthetic */ am a;
    final /* synthetic */ AtomicBoolean b;
    final /* synthetic */ m c;

    n(m mVar, am amVar, AtomicBoolean atomicBoolean) {
        this.c = mVar;
        this.a = amVar;
        this.b = atomicBoolean;
    }

    public /* synthetic */ void call(Object obj) {
        a((an) obj);
    }

    public void a(an anVar) {
        try {
            this.c.a.a(anVar);
            this.c.a(this.a, this.c.a);
        } finally {
            this.c.c.unlock();
            this.b.set(false);
        }
    }
}
