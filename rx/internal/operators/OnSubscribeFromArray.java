package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class OnSubscribeFromArray<T> implements p<T> {
    final T[] a;

    /* compiled from: Twttr */
    final class FromArrayProducer<T> extends AtomicLong implements s {
        private static final long serialVersionUID = 3534218984725836979L;
        final T[] array;
        final am<? super T> child;
        int index;

        public FromArrayProducer(am<? super T> amVar, T[] tArr) {
            this.child = amVar;
            this.array = tArr;
        }

        public void a(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            } else if (j == Long.MAX_VALUE) {
                if (a.a((AtomicLong) this, j) == 0) {
                    a();
                }
            } else if (j != 0 && a.a((AtomicLong) this, j) == 0) {
                b(j);
            }
        }

        void a() {
            am amVar = this.child;
            Object[] objArr = this.array;
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                if (!amVar.b()) {
                    amVar.b_(obj);
                    i++;
                } else {
                    return;
                }
            }
            if (!amVar.b()) {
                amVar.bs_();
            }
        }

        void b(long j) {
            am amVar = this.child;
            Object[] objArr = this.array;
            int length = objArr.length;
            int i = this.index;
            long j2 = 0;
            while (true) {
                if (j == 0 || i == length) {
                    j = get() + j2;
                    if (j == 0) {
                        this.index = i;
                        j = addAndGet(j2);
                        if (j != 0) {
                            j2 = 0;
                        } else {
                            return;
                        }
                    }
                    continue;
                } else if (!amVar.b()) {
                    amVar.b_(objArr[i]);
                    i++;
                    if (i == length) {
                        break;
                    }
                    j--;
                    j2--;
                } else {
                    return;
                }
            }
            if (!amVar.b()) {
                amVar.bs_();
            }
        }
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public OnSubscribeFromArray(T[] tArr) {
        this.a = tArr;
    }

    public void a(am<? super T> amVar) {
        amVar.a(new FromArrayProducer(amVar, this.a));
    }
}
