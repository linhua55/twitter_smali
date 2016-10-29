package rx.internal.operators;

import defpackage.czx;
import defpackage.daf;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.atomic.c;
import rx.p;
import rx.r;
import rx.s;

/* compiled from: Twttr */
public final class OnSubscribePublishMulticast<T> extends AtomicInteger implements an, p<T>, r<T> {
    static final PublishProducer<?>[] a;
    static final PublishProducer<?>[] b;
    private static final long serialVersionUID = -3741892510772238743L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final l<T> parent;
    final int prefetch;
    volatile s producer;
    final Queue<T> queue;
    volatile PublishProducer<T>[] subscribers;

    /* compiled from: Twttr */
    final class PublishProducer<T> extends AtomicLong implements an, s {
        private static final long serialVersionUID = 960704844171597367L;
        final am<? super T> actual;
        final AtomicBoolean once;
        final OnSubscribePublishMulticast<T> parent;

        public PublishProducer(am<? super T> amVar, OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
            this.actual = amVar;
            this.parent = onSubscribePublishMulticast;
            this.once = new AtomicBoolean();
        }

        public void a(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            } else if (j != 0) {
                a.a((AtomicLong) this, j);
                this.parent.c();
            }
        }

        public boolean b() {
            return this.once.get();
        }

        public void K_() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.b(this);
            }
        }
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    static {
        a = new PublishProducer[0];
        b = new PublishProducer[0];
    }

    public OnSubscribePublishMulticast(int i, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("prefetch > 0 required but it was " + i);
        }
        this.prefetch = i;
        this.delayError = z;
        if (daf.a()) {
            this.queue = new czx(i);
        } else {
            this.queue = new c(i);
        }
        this.subscribers = a;
        this.parent = new l(this);
    }

    public void a(am<? super T> amVar) {
        PublishProducer publishProducer = new PublishProducer(amVar, this);
        amVar.a((an) publishProducer);
        amVar.a((s) publishProducer);
        if (!a(publishProducer)) {
            Throwable th = this.error;
            if (th != null) {
                amVar.a(th);
            } else {
                amVar.bs_();
            }
        } else if (publishProducer.b()) {
            b(publishProducer);
        } else {
            c();
        }
    }

    public void b_(T t) {
        if (!this.queue.offer(t)) {
            this.parent.K_();
            this.error = new MissingBackpressureException("Queue full?!");
            this.done = true;
        }
        c();
    }

    public void a(Throwable th) {
        this.error = th;
        this.done = true;
        c();
    }

    public void bs_() {
        this.done = true;
        c();
    }

    void a(s sVar) {
        this.producer = sVar;
        sVar.a((long) this.prefetch);
    }

    void c() {
        if (getAndIncrement() == 0) {
            Queue queue = this.queue;
            int i = 0;
            do {
                PublishProducer[] publishProducerArr = this.subscribers;
                int length = publishProducerArr.length;
                int length2 = publishProducerArr.length;
                long j = Long.MAX_VALUE;
                int i2 = 0;
                while (i2 < length2) {
                    i2++;
                    j = Math.min(j, publishProducerArr[i2].get());
                }
                if (length != 0) {
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        Object poll = queue.poll();
                        boolean z2 = poll == null;
                        if (!a(z, z2)) {
                            if (z2) {
                                break;
                            }
                            for (PublishProducer publishProducer : publishProducerArr) {
                                publishProducer.actual.b_(poll);
                            }
                            j2 = 1 + j2;
                        } else {
                            return;
                        }
                    }
                    if (j2 != j || !a(this.done, queue.isEmpty())) {
                        if (j2 != 0) {
                            s sVar = this.producer;
                            if (sVar != null) {
                                sVar.a(j2);
                            }
                            for (AtomicLong b : publishProducerArr) {
                                a.b(b, j2);
                            }
                        }
                    } else {
                        return;
                    }
                }
                i = addAndGet(-i);
            } while (i != 0);
        }
    }

    boolean a(boolean z, boolean z2) {
        int i = 0;
        if (z) {
            int length;
            PublishProducer[] d;
            int length2;
            if (!this.delayError) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    PublishProducer[] d2 = d();
                    length = d2.length;
                    while (i < length) {
                        d2[i].actual.a(th);
                        i++;
                    }
                    return true;
                } else if (z2) {
                    d = d();
                    length2 = d.length;
                    while (i < length2) {
                        d[i].actual.bs_();
                        i++;
                    }
                    return true;
                }
            } else if (z2) {
                d = d();
                Throwable th2 = this.error;
                if (th2 != null) {
                    length = d.length;
                    while (i < length) {
                        d[i].actual.a(th2);
                        i++;
                    }
                    return true;
                }
                length2 = d.length;
                while (i < length2) {
                    d[i].actual.bs_();
                    i++;
                }
                return true;
            }
        }
        return false;
    }

    PublishProducer<T>[] d() {
        PublishProducer<T>[] publishProducerArr = this.subscribers;
        if (publishProducerArr == b) {
            return publishProducerArr;
        }
        PublishProducer<T>[] publishProducerArr2;
        synchronized (this) {
            publishProducerArr2 = this.subscribers;
            if (publishProducerArr2 != b) {
                this.subscribers = b;
            }
        }
        return publishProducerArr2;
    }

    boolean a(PublishProducer<T> publishProducer) {
        boolean z = false;
        if (this.subscribers != b) {
            synchronized (this) {
                Object obj = this.subscribers;
                if (obj == b) {
                } else {
                    int length = obj.length;
                    Object obj2 = new PublishProducer[(length + 1)];
                    System.arraycopy(obj, 0, obj2, 0, length);
                    obj2[length] = publishProducer;
                    this.subscribers = obj2;
                    z = true;
                }
            }
        }
        return z;
    }

    void b(PublishProducer<T> publishProducer) {
        PublishProducer[] publishProducerArr = this.subscribers;
        if (publishProducerArr != b && publishProducerArr != a) {
            synchronized (this) {
                Object obj = this.subscribers;
                if (obj == b || obj == a) {
                    return;
                }
                int i = -1;
                int length = obj.length;
                for (int i2 = 0; i2 < length; i2++) {
                    if (obj[i2] == publishProducer) {
                        i = i2;
                        break;
                    }
                }
                if (i < 0) {
                    return;
                }
                PublishProducer[] publishProducerArr2;
                if (length == 1) {
                    publishProducerArr2 = a;
                } else {
                    publishProducerArr2 = new PublishProducer[(length - 1)];
                    System.arraycopy(obj, 0, publishProducerArr2, 0, i);
                    System.arraycopy(obj, i + 1, publishProducerArr2, i, (length - i) - 1);
                }
                this.subscribers = publishProducerArr2;
            }
        }
    }

    public am<T> e() {
        return this.parent;
    }

    public void K_() {
        this.parent.K_();
    }

    public boolean b() {
        return this.parent.b();
    }
}
