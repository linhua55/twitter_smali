package rx.internal.operators;

import cyw;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.o;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class OperatorEagerConcatMap<T, R> implements q<R, T> {
    final cyw<? super T, ? extends o<? extends R>> a;
    final int b;
    private final int c;

    /* compiled from: Twttr */
    final class EagerOuterProducer extends AtomicLong implements s {
        private static final long serialVersionUID = -657299606803478389L;
        final aw<?, ?> parent;

        public EagerOuterProducer(aw<?, ?> awVar) {
            this.parent = awVar;
        }

        public void a(long j) {
            if (j < 0) {
                throw new IllegalStateException("n >= 0 required but it was " + j);
            } else if (j > 0) {
                a.a((AtomicLong) this, j);
                this.parent.f();
            }
        }
    }

    public OperatorEagerConcatMap(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R, int i, int i2) {
        this.a = cyw__super_T___extends_rx_o__extends_R;
        this.b = i;
        this.c = i2;
    }

    public am<? super T> a(am<? super R> amVar) {
        am awVar = new aw(this.a, this.b, this.c, amVar);
        awVar.d();
        return awVar;
    }
}
