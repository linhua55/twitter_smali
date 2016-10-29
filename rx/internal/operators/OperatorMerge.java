package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.o;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class OperatorMerge<T> implements q<T, o<? extends T>> {
    final boolean a;
    final int b;

    /* compiled from: Twttr */
    final class MergeProducer<T> extends AtomicLong implements s {
        private static final long serialVersionUID = -1214379189873595503L;
        final bi<T> subscriber;

        public MergeProducer(bi<T> biVar) {
            this.subscriber = biVar;
        }

        public void a(long j) {
            if (j > 0) {
                if (get() != Long.MAX_VALUE) {
                    a.a((AtomicLong) this, j);
                    this.subscriber.g();
                }
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
        }

        public long a(int i) {
            return addAndGet((long) (-i));
        }
    }

    public static <T> OperatorMerge<T> a(boolean z) {
        if (z) {
            return bf.a;
        }
        return bg.a;
    }

    OperatorMerge(boolean z, int i) {
        this.a = z;
        this.b = i;
    }

    public am<o<? extends T>> a(am<? super T> amVar) {
        an biVar = new bi(amVar, this.a, this.b);
        s mergeProducer = new MergeProducer(biVar);
        biVar.d = mergeProducer;
        amVar.a(biVar);
        amVar.a(mergeProducer);
        return biVar;
    }
}
