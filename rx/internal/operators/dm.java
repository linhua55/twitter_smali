package rx.internal.operators;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import rx.am;
import rx.exceptions.e;
import rx.internal.producers.SingleDelayedProducer;

/* compiled from: Twttr */
class dm extends am<T> {
    boolean a;
    List<T> b;
    final /* synthetic */ SingleDelayedProducer c;
    final /* synthetic */ am d;
    final /* synthetic */ dl e;

    dm(dl dlVar, SingleDelayedProducer singleDelayedProducer, am amVar) {
        this.e = dlVar;
        this.c = singleDelayedProducer;
        this.d = amVar;
        this.a = false;
        this.b = new LinkedList();
    }

    public void c() {
        a(Long.MAX_VALUE);
    }

    public void bs_() {
        if (!this.a) {
            this.a = true;
            try {
                Object arrayList = new ArrayList(this.b);
                this.b = null;
                this.c.a(arrayList);
            } catch (Throwable th) {
                e.a(th, this);
            }
        }
    }

    public void a(Throwable th) {
        this.d.a(th);
    }

    public void b_(T t) {
        if (!this.a) {
            this.b.add(t);
        }
    }
}
