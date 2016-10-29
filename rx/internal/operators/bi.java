package rx.internal.operators;

import dbg;
import defpackage.czo;
import defpackage.czx;
import defpackage.daf;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import rx.am;
import rx.an;
import rx.exceptions.CompositeException;
import rx.exceptions.MissingBackpressureException;
import rx.exceptions.OnErrorThrowable;
import rx.exceptions.e;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.atomic.SpscExactAtomicArrayQueue;
import rx.internal.util.atomic.c;
import rx.internal.util.atomic.f;
import rx.internal.util.s;
import rx.o;

/* compiled from: Twttr */
final class bi<T> extends am<o<? extends T>> {
    static final bh<?>[] q;
    final am<? super T> a;
    final boolean b;
    final int c;
    MergeProducer<T> d;
    volatile Queue<Object> e;
    volatile dbg f;
    volatile ConcurrentLinkedQueue<Throwable> g;
    final NotificationLite<T> h;
    volatile boolean i;
    boolean j;
    boolean k;
    final Object l;
    volatile bh<?>[] m;
    long n;
    long o;
    int p;
    final int r;
    int s;

    public /* synthetic */ void b_(Object obj) {
        a((o) obj);
    }

    static {
        q = new bh[0];
    }

    public bi(am<? super T> amVar, boolean z, int i) {
        this.a = amVar;
        this.b = z;
        this.c = i;
        this.h = NotificationLite.a();
        this.l = new Object();
        this.m = q;
        if (i == Integer.MAX_VALUE) {
            this.r = Integer.MAX_VALUE;
            a(Long.MAX_VALUE);
            return;
        }
        this.r = Math.max(1, i >> 1);
        a((long) i);
    }

    Queue<Throwable> d() {
        Queue<Throwable> queue = this.g;
        if (queue == null) {
            synchronized (this) {
                queue = this.g;
                if (queue == null) {
                    queue = new ConcurrentLinkedQueue();
                    this.g = queue;
                }
            }
        }
        return queue;
    }

    dbg e() {
        dbg dbg = this.f;
        if (dbg == null) {
            Object obj;
            synchronized (this) {
                dbg dbg2 = this.f;
                if (dbg2 == null) {
                    dbg2 = new dbg();
                    this.f = dbg2;
                    dbg = dbg2;
                    obj = 1;
                } else {
                    dbg = dbg2;
                    obj = null;
                }
            }
            if (obj != null) {
                a((an) dbg);
            }
        }
        return dbg;
    }

    public void a(o<? extends T> oVar) {
        if (oVar != null) {
            if (oVar == o.c()) {
                f();
            } else if (oVar instanceof ScalarSynchronousObservable) {
                b(((ScalarSynchronousObservable) oVar).a());
            } else {
                long j = this.n;
                this.n = 1 + j;
                bh bhVar = new bh(this, j);
                a(bhVar);
                oVar.a(bhVar);
                g();
            }
        }
    }

    void f() {
        int i = this.s + 1;
        if (i == this.r) {
            this.s = 0;
            b((long) i);
            return;
        }
        this.s = i;
    }

    private void j() {
        Collection arrayList = new ArrayList(this.g);
        if (arrayList.size() == 1) {
            this.a.a((Throwable) arrayList.get(0));
        } else {
            this.a.a(new CompositeException(arrayList));
        }
    }

    public void a(Throwable th) {
        d().offer(th);
        this.i = true;
        g();
    }

    public void bs_() {
        this.i = true;
        g();
    }

    void a(bh<T> bhVar) {
        e().a(bhVar);
        synchronized (this.l) {
            Object obj = this.m;
            int length = obj.length;
            Object obj2 = new bh[(length + 1)];
            System.arraycopy(obj, 0, obj2, 0, length);
            obj2[length] = bhVar;
            this.m = obj2;
        }
    }

    void b(bh<T> bhVar) {
        int i = 0;
        s sVar = bhVar.d;
        if (sVar != null) {
            sVar.e();
        }
        this.f.b(bhVar);
        synchronized (this.l) {
            Object obj = this.m;
            int length = obj.length;
            while (i < length) {
                if (bhVar.equals(obj[i])) {
                    break;
                }
                i++;
            }
            i = -1;
            if (i < 0) {
            } else if (length == 1) {
                this.m = q;
            } else {
                Object obj2 = new bh[(length - 1)];
                System.arraycopy(obj, 0, obj2, 0, i);
                System.arraycopy(obj, i + 1, obj2, i, (length - i) - 1);
                this.m = obj2;
            }
        }
    }

    void a(bh<T> bhVar, T t) {
        Object obj = null;
        long j = this.d.get();
        if (j != 0) {
            synchronized (this) {
                j = this.d.get();
                if (!(this.j || j == 0)) {
                    this.j = true;
                    obj = 1;
                }
            }
        }
        if (obj != null) {
            a(bhVar, t, j);
        } else {
            b(bhVar, t);
        }
    }

    protected void b(bh<T> bhVar, T t) {
        s sVar = bhVar.d;
        if (sVar == null) {
            sVar = s.c();
            bhVar.a((an) sVar);
            bhVar.d = sVar;
        }
        try {
            sVar.a(this.h.a((Object) t));
            g();
        } catch (Throwable e) {
            bhVar.K_();
            bhVar.a(e);
        } catch (Throwable e2) {
            if (!bhVar.b()) {
                bhVar.K_();
                bhVar.a(e2);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void a(rx.internal.operators.bh<T> r8, T r9, long r10) {
        /*
        r7 = this;
        r2 = 1;
        r1 = 0;
        r0 = r7.a;	 Catch:{ Throwable -> 0x0025 }
        r0.b_(r9);	 Catch:{ Throwable -> 0x0025 }
    L_0x0007:
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
        if (r0 == 0) goto L_0x0016;
    L_0x0010:
        r0 = r7.d;	 Catch:{ all -> 0x0046 }
        r3 = 1;
        r0.a(r3);	 Catch:{ all -> 0x0046 }
    L_0x0016:
        r4 = 1;
        r8.b(r4);	 Catch:{ all -> 0x0046 }
        monitor-enter(r7);	 Catch:{ all -> 0x0046 }
        r0 = r7.k;	 Catch:{ all -> 0x0050 }
        if (r0 != 0) goto L_0x0048;
    L_0x0020:
        r0 = 0;
        r7.j = r0;	 Catch:{ all -> 0x0050 }
        monitor-exit(r7);	 Catch:{ all -> 0x0050 }
    L_0x0024:
        return;
    L_0x0025:
        r0 = move-exception;
        r3 = r7.b;	 Catch:{ all -> 0x0046 }
        if (r3 != 0) goto L_0x003e;
    L_0x002a:
        rx.exceptions.e.a(r0);	 Catch:{ all -> 0x0046 }
        r8.K_();	 Catch:{ all -> 0x0034 }
        r8.a(r0);	 Catch:{ all -> 0x0034 }
        goto L_0x0024;
    L_0x0034:
        r0 = move-exception;
        r1 = r2;
    L_0x0036:
        if (r1 != 0) goto L_0x003d;
    L_0x0038:
        monitor-enter(r7);
        r1 = 0;
        r7.j = r1;	 Catch:{ all -> 0x0053 }
        monitor-exit(r7);	 Catch:{ all -> 0x0053 }
    L_0x003d:
        throw r0;
    L_0x003e:
        r3 = r7.d();	 Catch:{ all -> 0x0046 }
        r3.offer(r0);	 Catch:{ all -> 0x0046 }
        goto L_0x0007;
    L_0x0046:
        r0 = move-exception;
        goto L_0x0036;
    L_0x0048:
        r0 = 0;
        r7.k = r0;	 Catch:{ all -> 0x0050 }
        monitor-exit(r7);	 Catch:{ all -> 0x0050 }
        r7.h();
        goto L_0x0024;
    L_0x0050:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0050 }
        throw r0;	 Catch:{ all -> 0x0034 }
    L_0x0053:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0053 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.bi.a(rx.internal.operators.bh, java.lang.Object, long):void");
    }

    public void b(long j) {
        a(j);
    }

    void b(T t) {
        Object obj = null;
        long j = this.d.get();
        if (j != 0) {
            synchronized (this) {
                j = this.d.get();
                if (!(this.j || j == 0)) {
                    this.j = true;
                    obj = 1;
                }
            }
        }
        if (obj != null) {
            a((Object) t, j);
        } else {
            c(t);
        }
    }

    protected void c(T t) {
        Queue queue = this.e;
        if (queue == null) {
            int i = this.c;
            if (i == Integer.MAX_VALUE) {
                queue = new f(s.c);
            } else if (!czo.b(i)) {
                queue = new SpscExactAtomicArrayQueue(i);
            } else if (daf.a()) {
                queue = new czx(i);
            } else {
                queue = new c(i);
            }
            this.e = queue;
        }
        if (queue.offer(this.h.a((Object) t))) {
            g();
            return;
        }
        K_();
        a(OnErrorThrowable.a(new MissingBackpressureException(), t));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void a(T r7, long r8) {
        /*
        r6 = this;
        r2 = 1;
        r1 = 0;
        r0 = r6.a;	 Catch:{ Throwable -> 0x002f }
        r0.b_(r7);	 Catch:{ Throwable -> 0x002f }
    L_0x0007:
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r0 == 0) goto L_0x0016;
    L_0x0010:
        r0 = r6.d;	 Catch:{ all -> 0x0050 }
        r3 = 1;
        r0.a(r3);	 Catch:{ all -> 0x0050 }
    L_0x0016:
        r0 = r6.s;	 Catch:{ all -> 0x0050 }
        r0 = r0 + 1;
        r3 = r6.r;	 Catch:{ all -> 0x0050 }
        if (r0 != r3) goto L_0x0052;
    L_0x001e:
        r3 = 0;
        r6.s = r3;	 Catch:{ all -> 0x0050 }
        r4 = (long) r0;	 Catch:{ all -> 0x0050 }
        r6.b(r4);	 Catch:{ all -> 0x0050 }
    L_0x0025:
        monitor-enter(r6);	 Catch:{ all -> 0x0050 }
        r0 = r6.k;	 Catch:{ all -> 0x005d }
        if (r0 != 0) goto L_0x0055;
    L_0x002a:
        r0 = 0;
        r6.j = r0;	 Catch:{ all -> 0x005d }
        monitor-exit(r6);	 Catch:{ all -> 0x005d }
    L_0x002e:
        return;
    L_0x002f:
        r0 = move-exception;
        r3 = r6.b;	 Catch:{ all -> 0x0050 }
        if (r3 != 0) goto L_0x0048;
    L_0x0034:
        rx.exceptions.e.a(r0);	 Catch:{ all -> 0x0050 }
        r6.K_();	 Catch:{ all -> 0x003e }
        r6.a(r0);	 Catch:{ all -> 0x003e }
        goto L_0x002e;
    L_0x003e:
        r0 = move-exception;
        r1 = r2;
    L_0x0040:
        if (r1 != 0) goto L_0x0047;
    L_0x0042:
        monitor-enter(r6);
        r1 = 0;
        r6.j = r1;	 Catch:{ all -> 0x0060 }
        monitor-exit(r6);	 Catch:{ all -> 0x0060 }
    L_0x0047:
        throw r0;
    L_0x0048:
        r3 = r6.d();	 Catch:{ all -> 0x0050 }
        r3.offer(r0);	 Catch:{ all -> 0x0050 }
        goto L_0x0007;
    L_0x0050:
        r0 = move-exception;
        goto L_0x0040;
    L_0x0052:
        r6.s = r0;	 Catch:{ all -> 0x0050 }
        goto L_0x0025;
    L_0x0055:
        r0 = 0;
        r6.k = r0;	 Catch:{ all -> 0x005d }
        monitor-exit(r6);	 Catch:{ all -> 0x005d }
        r6.h();
        goto L_0x002e;
    L_0x005d:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x005d }
        throw r0;	 Catch:{ all -> 0x003e }
    L_0x0060:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0060 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.bi.a(java.lang.Object, long):void");
    }

    void g() {
        synchronized (this) {
            if (this.j) {
                this.k = true;
                return;
            }
            this.j = true;
            h();
        }
    }

    void h() {
        Object obj = null;
        am amVar = this.a;
        while (!i()) {
            Object obj2;
            Object obj3;
            int i;
            long j;
            int i2;
            boolean z;
            Queue queue;
            bh[] bhVarArr;
            int length;
            long j2;
            int i3;
            int i4;
            bh bhVar;
            Object obj4;
            int i5;
            s sVar;
            int i6;
            Queue queue2 = this.e;
            long j3 = this.d.get();
            if (j3 == Long.MAX_VALUE) {
                obj2 = 1;
            } else {
                obj2 = null;
            }
            int i7 = 0;
            if (queue2 != null) {
                do {
                    i = 0;
                    obj3 = null;
                    while (j3 > 0) {
                        obj3 = queue2.poll();
                        if (!i()) {
                            if (obj3 == null) {
                                break;
                            }
                            try {
                                amVar.b_(this.h.d(obj3));
                            } catch (Throwable th) {
                                try {
                                    if (this.b) {
                                        d().offer(th);
                                    } else {
                                        e.a(th);
                                        K_();
                                        amVar.a(th);
                                        return;
                                    }
                                } catch (Throwable th2) {
                                    if (obj == null) {
                                        synchronized (this) {
                                        }
                                        this.j = false;
                                    }
                                }
                            }
                            j3--;
                            i++;
                            i7++;
                        } else {
                            return;
                        }
                    }
                    if (i > 0) {
                        if (obj2 != null) {
                            j3 = Long.MAX_VALUE;
                        } else {
                            j3 = this.d.a(i);
                        }
                    }
                    if (j3 != 0) {
                    }
                } while (obj3 != null);
                j = j3;
                i2 = i7;
                z = this.i;
                queue = this.e;
                bhVarArr = this.m;
                length = bhVarArr.length;
                if (z || !((queue == null || queue.isEmpty()) && length == 0)) {
                    if (length <= 0) {
                        j2 = this.o;
                        i7 = this.p;
                        if (length <= i7 || bhVarArr[i7].b != j2) {
                            if (length <= i7) {
                                i7 = 0;
                            }
                            for (int i8 = 0; i8 < length; i8++) {
                                if (bhVarArr[i7].b != j2) {
                                    break;
                                }
                                i7++;
                                if (i7 == length) {
                                    i7 = 0;
                                }
                            }
                            this.p = i7;
                            this.o = bhVarArr[i7].b;
                        }
                        i3 = i7;
                        i = i2;
                        j3 = j;
                        i4 = 0;
                        obj3 = null;
                        while (i4 < length) {
                            if (i()) {
                                bhVar = bhVarArr[i3];
                                obj4 = null;
                                do {
                                    i5 = 0;
                                    while (j3 > 0) {
                                        if (i()) {
                                            sVar = bhVar.d;
                                            if (sVar != null) {
                                                obj4 = sVar.h();
                                                if (obj4 != null) {
                                                    break;
                                                }
                                                try {
                                                    amVar.b_(this.h.d(obj4));
                                                    i5++;
                                                    j3--;
                                                } catch (Throwable th3) {
                                                    obj = 1;
                                                    e.a(th3);
                                                    amVar.a(th3);
                                                    return;
                                                } finally {
                                                    K_();
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                        return;
                                    }
                                    if (i5 > 0) {
                                        if (obj2 == null) {
                                            j3 = this.d.a(i5);
                                        } else {
                                            j3 = Long.MAX_VALUE;
                                        }
                                        bhVar.b((long) i5);
                                    }
                                    if (j3 == 0) {
                                        break;
                                    }
                                } while (obj4 != null);
                                z = bhVar.c;
                                s sVar2 = bhVar.d;
                                if (z && (sVar2 == null || sVar2.g())) {
                                    b(bhVar);
                                    if (i()) {
                                        i++;
                                        obj3 = 1;
                                    } else {
                                        return;
                                    }
                                }
                                if (j3 == 0) {
                                    obj4 = obj3;
                                    i6 = i;
                                    break;
                                }
                                i7 = i3 + 1;
                                if (i7 != length) {
                                    i7 = 0;
                                }
                                i4++;
                                i3 = i7;
                            } else {
                                return;
                            }
                        }
                        obj4 = obj3;
                        i6 = i;
                        this.p = i3;
                        this.o = bhVarArr[i3].b;
                    } else {
                        obj4 = null;
                        i6 = i2;
                    }
                    if (i6 > 0) {
                        a((long) i6);
                    }
                    if (obj4 == null) {
                        synchronized (this) {
                            if (this.k) {
                                this.j = false;
                                return;
                            }
                            this.k = false;
                        }
                    }
                } else {
                    Queue queue3 = this.g;
                    if (queue3 == null || queue3.isEmpty()) {
                        amVar.bs_();
                        return;
                    } else {
                        j();
                        return;
                    }
                }
            }
            j = j3;
            i2 = i7;
            break;
            z = this.i;
            queue = this.e;
            bhVarArr = this.m;
            length = bhVarArr.length;
            if (z) {
            }
            if (length <= 0) {
                obj4 = null;
                i6 = i2;
            } else {
                j2 = this.o;
                i7 = this.p;
                if (length <= i7) {
                    i7 = 0;
                }
                while (i8 < length) {
                    if (bhVarArr[i7].b != j2) {
                        i7++;
                        if (i7 == length) {
                            i7 = 0;
                        }
                    } else {
                        break;
                        this.p = i7;
                        this.o = bhVarArr[i7].b;
                        i3 = i7;
                        i = i2;
                        j3 = j;
                        i4 = 0;
                        obj3 = null;
                        while (i4 < length) {
                            if (i()) {
                                bhVar = bhVarArr[i3];
                                obj4 = null;
                                do {
                                    i5 = 0;
                                    while (j3 > 0) {
                                        if (i()) {
                                            sVar = bhVar.d;
                                            if (sVar != null) {
                                                break;
                                            }
                                            obj4 = sVar.h();
                                            if (obj4 != null) {
                                                break;
                                            }
                                            amVar.b_(this.h.d(obj4));
                                            i5++;
                                            j3--;
                                            if (i5 > 0) {
                                                if (obj2 == null) {
                                                    j3 = Long.MAX_VALUE;
                                                } else {
                                                    j3 = this.d.a(i5);
                                                }
                                                bhVar.b((long) i5);
                                            }
                                            if (j3 == 0) {
                                                break;
                                            }
                                            z = bhVar.c;
                                            s sVar22 = bhVar.d;
                                            b(bhVar);
                                            if (i()) {
                                                i++;
                                                obj3 = 1;
                                                if (j3 == 0) {
                                                    i7 = i3 + 1;
                                                    if (i7 != length) {
                                                        i7 = 0;
                                                    }
                                                    i4++;
                                                    i3 = i7;
                                                } else {
                                                    obj4 = obj3;
                                                    i6 = i;
                                                    break;
                                                    this.p = i3;
                                                    this.o = bhVarArr[i3].b;
                                                }
                                            } else {
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    if (i5 > 0) {
                                        if (obj2 == null) {
                                            j3 = this.d.a(i5);
                                        } else {
                                            j3 = Long.MAX_VALUE;
                                        }
                                        bhVar.b((long) i5);
                                    }
                                    if (j3 == 0) {
                                        break;
                                    }
                                    z = bhVar.c;
                                    s sVar222 = bhVar.d;
                                    b(bhVar);
                                    if (i()) {
                                        i++;
                                        obj3 = 1;
                                        if (j3 == 0) {
                                            obj4 = obj3;
                                            i6 = i;
                                            break;
                                            this.p = i3;
                                            this.o = bhVarArr[i3].b;
                                        } else {
                                            i7 = i3 + 1;
                                            if (i7 != length) {
                                                i7 = 0;
                                            }
                                            i4++;
                                            i3 = i7;
                                        }
                                    } else {
                                        return;
                                    }
                                } while (obj4 != null);
                                z = bhVar.c;
                                s sVar2222 = bhVar.d;
                                b(bhVar);
                                if (i()) {
                                    i++;
                                    obj3 = 1;
                                    if (j3 == 0) {
                                        i7 = i3 + 1;
                                        if (i7 != length) {
                                            i7 = 0;
                                        }
                                        i4++;
                                        i3 = i7;
                                    } else {
                                        obj4 = obj3;
                                        i6 = i;
                                        break;
                                        this.p = i3;
                                        this.o = bhVarArr[i3].b;
                                    }
                                } else {
                                    return;
                                }
                            }
                            return;
                        }
                        obj4 = obj3;
                        i6 = i;
                        this.p = i3;
                        this.o = bhVarArr[i3].b;
                    }
                }
                this.p = i7;
                this.o = bhVarArr[i7].b;
                i3 = i7;
                i = i2;
                j3 = j;
                i4 = 0;
                obj3 = null;
                while (i4 < length) {
                    if (i()) {
                        bhVar = bhVarArr[i3];
                        obj4 = null;
                        do {
                            i5 = 0;
                            while (j3 > 0) {
                                if (i()) {
                                    sVar = bhVar.d;
                                    if (sVar != null) {
                                        obj4 = sVar.h();
                                        if (obj4 != null) {
                                            break;
                                        }
                                        amVar.b_(this.h.d(obj4));
                                        i5++;
                                        j3--;
                                    } else {
                                        break;
                                    }
                                    if (i5 > 0) {
                                        if (obj2 == null) {
                                            j3 = Long.MAX_VALUE;
                                        } else {
                                            j3 = this.d.a(i5);
                                        }
                                        bhVar.b((long) i5);
                                    }
                                    if (j3 == 0) {
                                        break;
                                    }
                                    z = bhVar.c;
                                    s sVar22222 = bhVar.d;
                                    b(bhVar);
                                    if (i()) {
                                        i++;
                                        obj3 = 1;
                                        if (j3 == 0) {
                                            obj4 = obj3;
                                            i6 = i;
                                            break;
                                            this.p = i3;
                                            this.o = bhVarArr[i3].b;
                                        } else {
                                            i7 = i3 + 1;
                                            if (i7 != length) {
                                                i7 = 0;
                                            }
                                            i4++;
                                            i3 = i7;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                                return;
                            }
                            if (i5 > 0) {
                                if (obj2 == null) {
                                    j3 = this.d.a(i5);
                                } else {
                                    j3 = Long.MAX_VALUE;
                                }
                                bhVar.b((long) i5);
                            }
                            if (j3 == 0) {
                                break;
                            }
                            z = bhVar.c;
                            s sVar222222 = bhVar.d;
                            b(bhVar);
                            if (i()) {
                                i++;
                                obj3 = 1;
                                if (j3 == 0) {
                                    i7 = i3 + 1;
                                    if (i7 != length) {
                                        i7 = 0;
                                    }
                                    i4++;
                                    i3 = i7;
                                } else {
                                    obj4 = obj3;
                                    i6 = i;
                                    break;
                                    this.p = i3;
                                    this.o = bhVarArr[i3].b;
                                }
                            } else {
                                return;
                            }
                        } while (obj4 != null);
                        z = bhVar.c;
                        s sVar2222222 = bhVar.d;
                        b(bhVar);
                        if (i()) {
                            i++;
                            obj3 = 1;
                            if (j3 == 0) {
                                obj4 = obj3;
                                i6 = i;
                                break;
                                this.p = i3;
                                this.o = bhVarArr[i3].b;
                            } else {
                                i7 = i3 + 1;
                                if (i7 != length) {
                                    i7 = 0;
                                }
                                i4++;
                                i3 = i7;
                            }
                        } else {
                            return;
                        }
                    }
                    return;
                }
                obj4 = obj3;
                i6 = i;
                this.p = i3;
                this.o = bhVarArr[i3].b;
            }
            if (i6 > 0) {
                a((long) i6);
            }
            if (obj4 == null) {
                synchronized (this) {
                    if (this.k) {
                        this.k = false;
                    } else {
                        this.j = false;
                        return;
                    }
                }
            }
        }
    }

    boolean i() {
        if (this.a.b()) {
            return true;
        }
        Queue queue = this.g;
        if (this.b || queue == null || queue.isEmpty()) {
            return false;
        }
        try {
            j();
            return true;
        } finally {
            K_();
        }
    }
}
