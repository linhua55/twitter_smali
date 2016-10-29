package rx.internal.operators;

import defpackage.cyy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.am;
import rx.an;
import rx.exceptions.CompositeException;
import rx.internal.util.atomic.d;
import rx.o;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class OnSubscribeCombineLatest<T, R> implements p<R> {
    final o<? extends T>[] a;
    final Iterable<? extends o<? extends T>> b;
    final cyy<? extends R> c;
    final int d;
    final boolean e;

    /* compiled from: Twttr */
    final class LatestCoordinator<T, R> extends AtomicInteger implements an, s {
        static final Object a;
        private static final long serialVersionUID = 8567835998786448817L;
        int active;
        final am<? super R> actual;
        final int bufferSize;
        volatile boolean cancelled;
        final cyy<? extends R> combiner;
        int complete;
        final int count;
        final boolean delayError;
        volatile boolean done;
        final AtomicReference<Throwable> error;
        final Object[] latest;
        final d<Object> queue;
        final AtomicLong requested;
        final d<T, R>[] subscribers;

        static {
            a = new Object();
        }

        public LatestCoordinator(am<? super R> amVar, cyy<? extends R> cyy__extends_R, int i, int i2, boolean z) {
            this.actual = amVar;
            this.combiner = cyy__extends_R;
            this.count = i;
            this.bufferSize = i2;
            this.delayError = z;
            this.latest = new Object[i];
            Arrays.fill(this.latest, a);
            this.subscribers = new d[i];
            this.queue = new d(i2);
            this.requested = new AtomicLong();
            this.error = new AtomicReference();
        }

        public void a(o<? extends T>[] oVarArr) {
            int i = 0;
            d[] dVarArr = this.subscribers;
            int length = dVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                dVarArr[i2] = new d(this, i2);
            }
            lazySet(0);
            this.actual.a((an) this);
            this.actual.a((s) this);
            while (i < length && !this.cancelled) {
                oVarArr[i].b(dVarArr[i]);
                i++;
            }
        }

        public void a(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            } else if (j != 0) {
                a.a(this.requested, j);
                c();
            }
        }

        public void K_() {
            if (!this.cancelled) {
                this.cancelled = true;
                if (getAndIncrement() == 0) {
                    a(this.queue);
                }
            }
        }

        public boolean b() {
            return this.cancelled;
        }

        void a(Queue<?> queue) {
            queue.clear();
            for (d K_ : this.subscribers) {
                K_.K_();
            }
        }

        void a(Object obj, int i) {
            Object obj2;
            Object obj3 = null;
            Object obj4 = this.subscribers[i];
            synchronized (this) {
                int i2;
                int length = this.latest.length;
                Object obj5 = this.latest[i];
                int i3 = this.active;
                if (obj5 == a) {
                    i3++;
                    this.active = i3;
                }
                int i4 = i3;
                i3 = this.complete;
                if (obj == null) {
                    i3++;
                    this.complete = i3;
                    i2 = i3;
                } else {
                    this.latest[i] = obj4.c.d(obj);
                    i2 = i3;
                }
                if (i4 == length) {
                    obj2 = 1;
                } else {
                    obj2 = null;
                }
                if (i2 == length || (obj == null && obj5 == a)) {
                    obj3 = 1;
                }
                if (obj3 != null) {
                    this.done = true;
                } else if (obj != null && obj2 != null) {
                    this.queue.a(obj4, this.latest.clone());
                } else if (obj == null && this.error.get() != null && (obj5 == a || !this.delayError)) {
                    this.done = true;
                }
            }
            if (obj2 != null || obj == null) {
                c();
            } else {
                obj4.b(1);
            }
        }

        void c() {
            if (getAndIncrement() == 0) {
                Queue queue = this.queue;
                am amVar = this.actual;
                boolean z = this.delayError;
                AtomicLong atomicLong = this.requested;
                int i = 1;
                while (!a(this.done, queue.isEmpty(), amVar, queue, z)) {
                    long j = atomicLong.get();
                    Object obj = j == Long.MAX_VALUE ? 1 : null;
                    long j2 = j;
                    j = 0;
                    while (j2 != 0) {
                        boolean z2 = this.done;
                        d dVar = (d) queue.peek();
                        boolean z3 = dVar == null;
                        if (!a(z2, z3, amVar, queue, z)) {
                            if (z3) {
                                break;
                            }
                            queue.poll();
                            Object[] objArr = (Object[]) queue.poll();
                            if (objArr == null) {
                                this.cancelled = true;
                                a(queue);
                                amVar.a(new IllegalStateException("Broken queue?! Sender received but not the array."));
                                return;
                            }
                            try {
                                amVar.b_(this.combiner.b(objArr));
                                dVar.b(1);
                                j2--;
                                j--;
                            } catch (Throwable th) {
                                this.cancelled = true;
                                a(queue);
                                amVar.a(th);
                                return;
                            }
                        }
                        return;
                    }
                    if (j != 0 && obj == null) {
                        atomicLong.addAndGet(j);
                    }
                    int addAndGet = addAndGet(-i);
                    if (addAndGet != 0) {
                        i = addAndGet;
                    } else {
                        return;
                    }
                }
            }
        }

        boolean a(boolean z, boolean z2, am<?> amVar, Queue<?> queue, boolean z3) {
            if (this.cancelled) {
                a((Queue) queue);
                return true;
            }
            if (z) {
                Throwable th;
                if (!z3) {
                    th = (Throwable) this.error.get();
                    if (th != null) {
                        a((Queue) queue);
                        amVar.a(th);
                        return true;
                    } else if (z2) {
                        amVar.bs_();
                        return true;
                    }
                } else if (z2) {
                    th = (Throwable) this.error.get();
                    if (th != null) {
                        amVar.a(th);
                    } else {
                        amVar.bs_();
                    }
                    return true;
                }
            }
            return false;
        }

        void a(Throwable th) {
            AtomicReference atomicReference = this.error;
            Throwable th2;
            Object compositeException;
            do {
                th2 = (Throwable) atomicReference.get();
                if (th2 == null) {
                    Throwable th3 = th;
                } else if (th2 instanceof CompositeException) {
                    Collection arrayList = new ArrayList(((CompositeException) th2).a());
                    arrayList.add(th);
                    compositeException = new CompositeException(arrayList);
                } else {
                    compositeException = new CompositeException(Arrays.asList(new Throwable[]{th2, th}));
                }
            } while (!atomicReference.compareAndSet(th2, compositeException));
        }
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public OnSubscribeCombineLatest(Iterable<? extends o<? extends T>> iterable, cyy<? extends R> cyy__extends_R) {
        this(null, iterable, cyy__extends_R, rx.internal.util.s.c, false);
    }

    public OnSubscribeCombineLatest(o<? extends T>[] oVarArr, Iterable<? extends o<? extends T>> iterable, cyy<? extends R> cyy__extends_R, int i, boolean z) {
        this.a = oVarArr;
        this.b = iterable;
        this.c = cyy__extends_R;
        this.d = i;
        this.e = z;
    }

    public void a(am<? super R> amVar) {
        int length;
        o[] oVarArr;
        o[] oVarArr2 = this.a;
        if (oVarArr2 != null) {
            length = oVarArr2.length;
            oVarArr = oVarArr2;
        } else if (this.b instanceof List) {
            List list = (List) this.b;
            oVarArr2 = (o[]) list.toArray(new o[list.size()]);
            length = oVarArr2.length;
            oVarArr = oVarArr2;
        } else {
            Object obj = new o[8];
            int i = 0;
            Object obj2 = obj;
            for (o oVar : this.b) {
                Object obj3;
                if (i == obj2.length) {
                    obj3 = new o[((i >> 2) + i)];
                    System.arraycopy(obj2, 0, obj3, 0, i);
                } else {
                    obj3 = obj2;
                }
                length = i + 1;
                obj3[i] = oVar;
                i = length;
                obj2 = obj3;
            }
            Object obj4 = obj2;
            length = i;
        }
        if (length == 0) {
            amVar.bs_();
            return;
        }
        new LatestCoordinator(amVar, this.c, length, this.d, this.e).a(oVarArr);
    }
}
