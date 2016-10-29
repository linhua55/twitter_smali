package rx.internal.operators;

import defpackage.dax;
import defpackage.dbj;
import defpackage.dbl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.exceptions.CompositeException;
import rx.internal.util.atomic.d;
import rx.o;
import rx.s;

/* compiled from: Twttr */
final class ct<T> extends am<o<? extends T>> {
    static final Throwable n;
    final am<? super T> a;
    final dbj b;
    final boolean c;
    final AtomicLong d;
    final d<Object> e;
    final NotificationLite<T> f;
    boolean g;
    boolean h;
    long i;
    s j;
    volatile boolean k;
    Throwable l;
    boolean m;

    public /* synthetic */ void b_(Object obj) {
        a((o) obj);
    }

    static {
        n = new Throwable("Terminal error");
    }

    ct(am<? super T> amVar, boolean z) {
        this.a = amVar;
        this.b = new dbj();
        this.c = z;
        this.d = new AtomicLong();
        this.e = new d(rx.internal.util.s.c);
        this.f = NotificationLite.a();
    }

    void d() {
        this.a.a(this.b);
        this.a.a(dbl.a(new cu(this)));
        this.a.a(new cv(this));
    }

    void e() {
        synchronized (this) {
            this.j = null;
        }
    }

    public void a(o<? extends T> oVar) {
        am csVar;
        long incrementAndGet = this.d.incrementAndGet();
        an c = this.b.c();
        if (c != null) {
            c.K_();
        }
        synchronized (this) {
            csVar = new cs(incrementAndGet, this);
            this.m = true;
            this.j = null;
        }
        this.b.a(csVar);
        oVar.a(csVar);
    }

    public void a(Throwable th) {
        synchronized (this) {
            boolean b = b(th);
        }
        if (b) {
            this.k = true;
            f();
            return;
        }
        c(th);
    }

    boolean b(Throwable th) {
        Throwable th2 = this.l;
        if (th2 == n) {
            return false;
        }
        if (th2 == null) {
            this.l = th;
        } else if (th2 instanceof CompositeException) {
            Collection arrayList = new ArrayList(((CompositeException) th2).a());
            arrayList.add(th);
            this.l = new CompositeException(arrayList);
        } else {
            this.l = new CompositeException(new Throwable[]{th2, th});
        }
        return true;
    }

    public void bs_() {
        this.k = true;
        f();
    }

    void a(T t, cs<T> csVar) {
        synchronized (this) {
            if (this.d.get() != csVar.a) {
                return;
            }
            this.e.a((Object) csVar, this.f.a((Object) t));
            f();
        }
    }

    void a(Throwable th, long j) {
        boolean b;
        synchronized (this) {
            if (this.d.get() == j) {
                b = b(th);
                this.m = false;
                this.j = null;
            } else {
                b = true;
            }
        }
        if (b) {
            f();
        } else {
            c(th);
        }
    }

    void b(long j) {
        synchronized (this) {
            if (this.d.get() != j) {
                return;
            }
            this.m = false;
            this.j = null;
            f();
        }
    }

    void c(Throwable th) {
        dax.a().b().a(th);
    }

    void a(s sVar, long j) {
        synchronized (this) {
            if (this.d.get() != j) {
                return;
            }
            long j2 = this.i;
            this.j = sVar;
            sVar.a(j2);
        }
    }

    void c(long j) {
        synchronized (this) {
            s sVar = this.j;
            this.i = a.a(this.i, j);
        }
        if (sVar != null) {
            sVar.a(j);
        }
        f();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void f() {
        /*
        r20 = this;
        r0 = r20;
        r8 = r0.k;
        monitor-enter(r20);
        r0 = r20;
        r2 = r0.g;	 Catch:{ all -> 0x009c }
        if (r2 == 0) goto L_0x0012;
    L_0x000b:
        r2 = 1;
        r0 = r20;
        r0.h = r2;	 Catch:{ all -> 0x009c }
        monitor-exit(r20);	 Catch:{ all -> 0x009c }
    L_0x0011:
        return;
    L_0x0012:
        r2 = 1;
        r0 = r20;
        r0.g = r2;	 Catch:{ all -> 0x009c }
        r0 = r20;
        r4 = r0.m;	 Catch:{ all -> 0x009c }
        r0 = r20;
        r2 = r0.i;	 Catch:{ all -> 0x009c }
        r0 = r20;
        r5 = r0.l;	 Catch:{ all -> 0x009c }
        if (r5 == 0) goto L_0x0035;
    L_0x0025:
        r6 = n;	 Catch:{ all -> 0x009c }
        if (r5 == r6) goto L_0x0035;
    L_0x0029:
        r0 = r20;
        r6 = r0.c;	 Catch:{ all -> 0x009c }
        if (r6 != 0) goto L_0x0035;
    L_0x002f:
        r6 = n;	 Catch:{ all -> 0x009c }
        r0 = r20;
        r0.l = r6;	 Catch:{ all -> 0x009c }
    L_0x0035:
        monitor-exit(r20);	 Catch:{ all -> 0x009c }
        r0 = r20;
        r6 = r0.e;
        r0 = r20;
        r14 = r0.d;
        r0 = r20;
        r7 = r0.a;
        r10 = r2;
        r3 = r8;
    L_0x0044:
        r12 = 0;
    L_0x0046:
        r2 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
        if (r2 == 0) goto L_0x005e;
    L_0x004a:
        r2 = r7.b();
        if (r2 != 0) goto L_0x0011;
    L_0x0050:
        r8 = r6.isEmpty();
        r2 = r20;
        r2 = r2.a(r3, r4, r5, r6, r7, r8);
        if (r2 != 0) goto L_0x0011;
    L_0x005c:
        if (r8 == 0) goto L_0x009f;
    L_0x005e:
        r2 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
        if (r2 != 0) goto L_0x0078;
    L_0x0062:
        r2 = r7.b();
        if (r2 != 0) goto L_0x0011;
    L_0x0068:
        r0 = r20;
        r3 = r0.k;
        r8 = r6.isEmpty();
        r2 = r20;
        r2 = r2.a(r3, r4, r5, r6, r7, r8);
        if (r2 != 0) goto L_0x0011;
    L_0x0078:
        monitor-enter(r20);
        r0 = r20;
        r2 = r0.i;	 Catch:{ all -> 0x0099 }
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r4 == 0) goto L_0x008b;
    L_0x0086:
        r2 = r2 - r12;
        r0 = r20;
        r0.i = r2;	 Catch:{ all -> 0x0099 }
    L_0x008b:
        r0 = r20;
        r4 = r0.h;	 Catch:{ all -> 0x0099 }
        if (r4 != 0) goto L_0x00c5;
    L_0x0091:
        r2 = 0;
        r0 = r20;
        r0.g = r2;	 Catch:{ all -> 0x0099 }
        monitor-exit(r20);	 Catch:{ all -> 0x0099 }
        goto L_0x0011;
    L_0x0099:
        r2 = move-exception;
        monitor-exit(r20);	 Catch:{ all -> 0x0099 }
        throw r2;
    L_0x009c:
        r2 = move-exception;
        monitor-exit(r20);	 Catch:{ all -> 0x009c }
        throw r2;
    L_0x009f:
        r2 = r6.poll();
        r2 = (rx.internal.operators.cs) r2;
        r0 = r20;
        r8 = r0.f;
        r9 = r6.poll();
        r8 = r8.d(r9);
        r16 = r14.get();
        r18 = r2.a;
        r2 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1));
        if (r2 != 0) goto L_0x00ed;
    L_0x00bd:
        r7.b_(r8);
        r8 = 1;
        r8 = r8 + r12;
    L_0x00c3:
        r12 = r8;
        goto L_0x0046;
    L_0x00c5:
        r4 = 0;
        r0 = r20;
        r0.h = r4;	 Catch:{ all -> 0x0099 }
        r0 = r20;
        r8 = r0.k;	 Catch:{ all -> 0x0099 }
        r0 = r20;
        r4 = r0.m;	 Catch:{ all -> 0x0099 }
        r0 = r20;
        r5 = r0.l;	 Catch:{ all -> 0x0099 }
        if (r5 == 0) goto L_0x00e8;
    L_0x00d8:
        r9 = n;	 Catch:{ all -> 0x0099 }
        if (r5 == r9) goto L_0x00e8;
    L_0x00dc:
        r0 = r20;
        r9 = r0.c;	 Catch:{ all -> 0x0099 }
        if (r9 != 0) goto L_0x00e8;
    L_0x00e2:
        r9 = n;	 Catch:{ all -> 0x0099 }
        r0 = r20;
        r0.l = r9;	 Catch:{ all -> 0x0099 }
    L_0x00e8:
        monitor-exit(r20);	 Catch:{ all -> 0x0099 }
        r10 = r2;
        r3 = r8;
        goto L_0x0044;
    L_0x00ed:
        r8 = r12;
        goto L_0x00c3;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.ct.f():void");
    }

    protected boolean a(boolean z, boolean z2, Throwable th, d<Object> dVar, am<? super T> amVar, boolean z3) {
        if (this.c) {
            if (z && !z2 && z3) {
                if (th != null) {
                    amVar.a(th);
                    return true;
                }
                amVar.bs_();
                return true;
            }
        } else if (th != null) {
            dVar.clear();
            amVar.a(th);
            return true;
        } else if (z && !z2 && z3) {
            amVar.bs_();
            return true;
        }
        return false;
    }
}
