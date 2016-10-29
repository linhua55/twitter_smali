package rx.internal.operators;

import rx.am;
import rx.exceptions.e;
import rx.internal.producers.SingleDelayedProducer;

/* compiled from: Twttr */
class w extends am<T> {
    boolean a;
    boolean b;
    final /* synthetic */ SingleDelayedProducer c;
    final /* synthetic */ am d;
    final /* synthetic */ v e;

    w(v vVar, SingleDelayedProducer singleDelayedProducer, am amVar) {
        this.e = vVar;
        this.c = singleDelayedProducer;
        this.d = amVar;
    }

    public void b_(T t) {
        this.a = true;
        try {
            if (((Boolean) this.e.a.a(t)).booleanValue() && !this.b) {
                this.b = true;
                this.c.a(Boolean.valueOf(!this.e.b));
                K_();
            }
        } catch (Throwable th) {
            e.a(th, this, t);
        }
    }

    public void a(Throwable th) {
        this.d.a(th);
    }

    public void bs_() {
        if (!this.b) {
            this.b = true;
            if (this.a) {
                this.c.a(Boolean.valueOf(false));
            } else {
                this.c.a(Boolean.valueOf(this.e.b));
            }
        }
    }
}
