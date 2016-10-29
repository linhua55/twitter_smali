package rx.internal.operators;

import cyw;
import defpackage.dbl;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import rx.am;
import rx.an;
import rx.exceptions.e;
import rx.o;

/* compiled from: Twttr */
final class aw<T, R> extends am<T> {
    final cyw<? super T, ? extends o<? extends R>> a;
    final int b;
    final am<? super R> c;
    final LinkedList<av<R>> d;
    volatile boolean e;
    Throwable f;
    volatile boolean g;
    final AtomicInteger h;
    private EagerOuterProducer i;

    public aw(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R, int i, int i2, am<? super R> amVar) {
        this.a = cyw__super_T___extends_rx_o__extends_R;
        this.b = i;
        this.c = amVar;
        this.d = new LinkedList();
        this.h = new AtomicInteger();
        a(i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : (long) i2);
    }

    void d() {
        this.i = new EagerOuterProducer(this);
        a(dbl.a(new ax(this)));
        this.c.a((an) this);
        this.c.a(this.i);
    }

    void e() {
        synchronized (this.d) {
            List<an> arrayList = new ArrayList(this.d);
            this.d.clear();
        }
        for (an K_ : arrayList) {
            K_.K_();
        }
    }

    public void b_(T t) {
        try {
            o oVar = (o) this.a.a(t);
            am avVar = new av(this, this.b);
            if (!this.g) {
                synchronized (this.d) {
                    if (this.g) {
                        return;
                    }
                    this.d.add(avVar);
                    if (!this.g) {
                        oVar.a(avVar);
                        f();
                    }
                }
            }
        } catch (Throwable th) {
            e.a(th, this.c, t);
        }
    }

    public void a(Throwable th) {
        this.f = th;
        this.e = true;
        f();
    }

    public void bs_() {
        this.e = true;
        f();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void f() {
        /*
        r20 = this;
        r0 = r20;
        r2 = r0.h;
        r2 = r2.getAndIncrement();
        if (r2 == 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r2 = 1;
        r0 = r20;
        r11 = r0.i;
        r0 = r20;
        r12 = r0.c;
        r13 = rx.internal.operators.NotificationLite.a();
        r3 = r2;
    L_0x0019:
        r0 = r20;
        r2 = r0.g;
        if (r2 == 0) goto L_0x0023;
    L_0x001f:
        r20.e();
        goto L_0x000a;
    L_0x0023:
        r0 = r20;
        r5 = r0.e;
        r0 = r20;
        r4 = r0.d;
        monitor-enter(r4);
        r0 = r20;
        r2 = r0.d;	 Catch:{ all -> 0x0049 }
        r2 = r2.peek();	 Catch:{ all -> 0x0049 }
        r2 = (rx.internal.operators.av) r2;	 Catch:{ all -> 0x0049 }
        monitor-exit(r4);	 Catch:{ all -> 0x0049 }
        if (r2 != 0) goto L_0x004c;
    L_0x0039:
        r4 = 1;
    L_0x003a:
        if (r5 == 0) goto L_0x0054;
    L_0x003c:
        r0 = r20;
        r5 = r0.f;
        if (r5 == 0) goto L_0x004e;
    L_0x0042:
        r20.e();
        r12.a(r5);
        goto L_0x000a;
    L_0x0049:
        r2 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0049 }
        throw r2;
    L_0x004c:
        r4 = 0;
        goto L_0x003a;
    L_0x004e:
        if (r4 == 0) goto L_0x0054;
    L_0x0050:
        r12.bs_();
        goto L_0x000a;
    L_0x0054:
        if (r4 != 0) goto L_0x00b0;
    L_0x0056:
        r8 = r11.get();
        r6 = 0;
        r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r4 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
        if (r4 != 0) goto L_0x007f;
    L_0x0065:
        r4 = 1;
    L_0x0066:
        r14 = r2.b;
        r5 = 0;
    L_0x0069:
        r15 = r2.d;
        r16 = r14.peek();
        if (r16 != 0) goto L_0x0081;
    L_0x0071:
        r10 = 1;
    L_0x0072:
        if (r15 == 0) goto L_0x00c1;
    L_0x0074:
        r15 = r2.e;
        if (r15 == 0) goto L_0x0083;
    L_0x0078:
        r20.e();
        r12.a(r15);
        goto L_0x000a;
    L_0x007f:
        r4 = 0;
        goto L_0x0066;
    L_0x0081:
        r10 = 0;
        goto L_0x0072;
    L_0x0083:
        if (r10 == 0) goto L_0x00c1;
    L_0x0085:
        r0 = r20;
        r5 = r0.d;
        monitor-enter(r5);
        r0 = r20;
        r8 = r0.d;	 Catch:{ all -> 0x00be }
        r8.poll();	 Catch:{ all -> 0x00be }
        monitor-exit(r5);	 Catch:{ all -> 0x00be }
        r2.K_();
        r5 = 1;
        r8 = 1;
        r0 = r20;
        r0.a(r8);
    L_0x009d:
        r8 = 0;
        r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x00ae;
    L_0x00a3:
        if (r4 != 0) goto L_0x00a8;
    L_0x00a5:
        r11.addAndGet(r6);
    L_0x00a8:
        if (r5 != 0) goto L_0x00ae;
    L_0x00aa:
        r6 = -r6;
        r2.b(r6);
    L_0x00ae:
        if (r5 != 0) goto L_0x0019;
    L_0x00b0:
        r0 = r20;
        r2 = r0.h;
        r3 = -r3;
        r2 = r2.addAndGet(r3);
        if (r2 == 0) goto L_0x000a;
    L_0x00bb:
        r3 = r2;
        goto L_0x0019;
    L_0x00be:
        r2 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x00be }
        throw r2;
    L_0x00c1:
        if (r10 != 0) goto L_0x009d;
    L_0x00c3:
        r18 = 0;
        r10 = (r8 > r18 ? 1 : (r8 == r18 ? 0 : -1));
        if (r10 == 0) goto L_0x009d;
    L_0x00c9:
        r14.poll();
        r0 = r16;
        r10 = r13.d(r0);	 Catch:{ Throwable -> 0x00de }
        r12.b_(r10);	 Catch:{ Throwable -> 0x00de }
        r16 = 1;
        r8 = r8 - r16;
        r16 = 1;
        r6 = r6 - r16;
        goto L_0x0069;
    L_0x00de:
        r2 = move-exception;
        r0 = r16;
        rx.exceptions.e.a(r2, r12, r0);
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.aw.f():void");
    }
}
