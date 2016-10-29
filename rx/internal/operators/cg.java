package rx.internal.operators;

import defpackage.dae;
import defpackage.daf;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.internal.util.atomic.e;
import rx.r;
import rx.s;

/* compiled from: Twttr */
final class cg<R> implements r<R>, s {
    final am<? super R> a;
    final Queue<Object> b;
    boolean c;
    boolean d;
    long e;
    final AtomicLong f;
    volatile s g;
    volatile boolean h;
    Throwable i;

    public cg(R r, am<? super R> amVar) {
        Queue dae;
        this.a = amVar;
        if (daf.a()) {
            dae = new dae();
        } else {
            dae = new e();
        }
        this.b = dae;
        dae.offer(NotificationLite.a().a((Object) r));
        this.f = new AtomicLong();
    }

    public void b_(R r) {
        this.b.offer(NotificationLite.a().a((Object) r));
        b();
    }

    boolean a(boolean z, boolean z2, am<? super R> amVar) {
        if (amVar.b()) {
            return true;
        }
        if (z) {
            Throwable th = this.i;
            if (th != null) {
                amVar.a(th);
                return true;
            } else if (z2) {
                amVar.bs_();
                return true;
            }
        }
        return false;
    }

    public void a(Throwable th) {
        this.i = th;
        this.h = true;
        b();
    }

    public void bs_() {
        this.h = true;
        b();
    }

    public void a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= required but it was " + j);
        } else if (j != 0) {
            a.a(this.f, j);
            s sVar = this.g;
            if (sVar == null) {
                synchronized (this.f) {
                    sVar = this.g;
                    if (sVar == null) {
                        this.e = a.a(this.e, j);
                    }
                }
            }
            if (sVar != null) {
                sVar.a(j);
            }
            b();
        }
    }

    public void a(s sVar) {
        if (sVar == null) {
            throw new NullPointerException();
        }
        synchronized (this.f) {
            if (this.g != null) {
                throw new IllegalStateException("Can't set more than one Producer!");
            }
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                j--;
            }
            this.e = 0;
            this.g = sVar;
        }
        if (j > 0) {
            sVar.a(j);
        }
        b();
    }

    void b() {
        synchronized (this) {
            if (this.c) {
                this.d = true;
                return;
            }
            this.c = true;
            c();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void c() {
        /*
        r14 = this;
        r8 = r14.a;
        r9 = r14.b;
        r10 = rx.internal.operators.NotificationLite.a();
        r11 = r14.f;
        r4 = r11.get();
    L_0x000e:
        r0 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r0 != 0) goto L_0x0025;
    L_0x0017:
        r0 = 1;
    L_0x0018:
        r1 = r14.h;
        r2 = r9.isEmpty();
        r1 = r14.a(r1, r2, r8);
        if (r1 == 0) goto L_0x0027;
    L_0x0024:
        return;
    L_0x0025:
        r0 = 0;
        goto L_0x0018;
    L_0x0027:
        r2 = 0;
        r12 = r2;
        r2 = r4;
        r4 = r12;
    L_0x002c:
        r6 = 0;
        r1 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
        if (r1 == 0) goto L_0x0043;
    L_0x0032:
        r6 = r14.h;
        r7 = r9.poll();
        if (r7 != 0) goto L_0x005c;
    L_0x003a:
        r1 = 1;
    L_0x003b:
        r6 = r14.a(r6, r1, r8);
        if (r6 != 0) goto L_0x0024;
    L_0x0041:
        if (r1 == 0) goto L_0x005e;
    L_0x0043:
        r6 = 0;
        r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r1 == 0) goto L_0x007b;
    L_0x0049:
        if (r0 != 0) goto L_0x007b;
    L_0x004b:
        r0 = r11.addAndGet(r4);
    L_0x004f:
        monitor-enter(r14);
        r2 = r14.d;	 Catch:{ all -> 0x0059 }
        if (r2 != 0) goto L_0x0075;
    L_0x0054:
        r0 = 0;
        r14.c = r0;	 Catch:{ all -> 0x0059 }
        monitor-exit(r14);	 Catch:{ all -> 0x0059 }
        goto L_0x0024;
    L_0x0059:
        r0 = move-exception;
        monitor-exit(r14);	 Catch:{ all -> 0x0059 }
        throw r0;
    L_0x005c:
        r1 = 0;
        goto L_0x003b;
    L_0x005e:
        r1 = r10.d(r7);
        r8.b_(r1);	 Catch:{ Throwable -> 0x0070 }
        r6 = 1;
        r6 = r2 - r6;
        r2 = 1;
        r2 = r4 - r2;
        r4 = r2;
        r2 = r6;
        goto L_0x002c;
    L_0x0070:
        r0 = move-exception;
        rx.exceptions.e.a(r0, r8, r1);
        goto L_0x0024;
    L_0x0075:
        r2 = 0;
        r14.d = r2;	 Catch:{ all -> 0x0059 }
        monitor-exit(r14);	 Catch:{ all -> 0x0059 }
        r4 = r0;
        goto L_0x000e;
    L_0x007b:
        r0 = r2;
        goto L_0x004f;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.cg.c():void");
    }
}
