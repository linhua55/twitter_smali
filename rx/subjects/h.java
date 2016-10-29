package rx.subjects;

import rx.internal.util.r;

/* compiled from: Twttr */
final class h<T> implements g<T> {
    final int a;
    volatile int b;
    final Object[] c;
    Object[] d;
    int e;
    volatile boolean f;
    Throwable g;

    public h(int i) {
        this.a = i;
        Object[] objArr = new Object[(i + 1)];
        this.c = objArr;
        this.d = objArr;
    }

    public void a(T t) {
        if (!this.f) {
            int i = this.e;
            Object[] objArr = this.d;
            if (i == objArr.length - 1) {
                Object[] objArr2 = new Object[objArr.length];
                objArr2[0] = t;
                this.e = 1;
                objArr[i] = objArr2;
                this.d = objArr2;
            } else {
                objArr[i] = t;
                this.e = i + 1;
            }
            this.b++;
        }
    }

    public void a(Throwable th) {
        if (this.f) {
            r.a(th);
            return;
        }
        this.g = th;
        this.f = true;
    }

    public void a() {
        this.f = true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(rx.subjects.ReplaySubject.ReplayProducer<T> r18) {
        /*
        r17 = this;
        r2 = r18.getAndIncrement();
        if (r2 == 0) goto L_0x0008;
    L_0x0006:
        r2 = 0;
    L_0x0007:
        return r2;
    L_0x0008:
        r2 = 1;
        r0 = r18;
        r10 = r0.actual;
        r0 = r17;
        r11 = r0.a;
        r3 = r2;
    L_0x0012:
        r0 = r18;
        r2 = r0.requested;
        r12 = r2.get();
        r6 = 0;
        r0 = r18;
        r2 = r0.node;
        r2 = (java.lang.Object[]) r2;
        r2 = (java.lang.Object[]) r2;
        if (r2 != 0) goto L_0x002a;
    L_0x0026:
        r0 = r17;
        r2 = r0.c;
    L_0x002a:
        r0 = r18;
        r5 = r0.tailIndex;
        r0 = r18;
        r4 = r0.index;
        r8 = r6;
        r6 = r4;
        r4 = r2;
        r2 = r5;
    L_0x0036:
        r5 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1));
        if (r5 == 0) goto L_0x006e;
    L_0x003a:
        r5 = r10.b();
        if (r5 == 0) goto L_0x0047;
    L_0x0040:
        r2 = 0;
        r0 = r18;
        r0.node = r2;
        r2 = 0;
        goto L_0x0007;
    L_0x0047:
        r0 = r17;
        r7 = r0.f;
        r0 = r17;
        r5 = r0.b;
        if (r6 != r5) goto L_0x0066;
    L_0x0051:
        r5 = 1;
    L_0x0052:
        if (r7 == 0) goto L_0x006c;
    L_0x0054:
        if (r5 == 0) goto L_0x006c;
    L_0x0056:
        r2 = 0;
        r0 = r18;
        r0.node = r2;
        r0 = r17;
        r2 = r0.g;
        if (r2 == 0) goto L_0x0068;
    L_0x0061:
        r10.a(r2);
    L_0x0064:
        r2 = 0;
        goto L_0x0007;
    L_0x0066:
        r5 = 0;
        goto L_0x0052;
    L_0x0068:
        r10.bs_();
        goto L_0x0064;
    L_0x006c:
        if (r5 == 0) goto L_0x007f;
    L_0x006e:
        r5 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1));
        if (r5 != 0) goto L_0x00c2;
    L_0x0072:
        r5 = r10.b();
        if (r5 == 0) goto L_0x009c;
    L_0x0078:
        r2 = 0;
        r0 = r18;
        r0.node = r2;
        r2 = 0;
        goto L_0x0007;
    L_0x007f:
        if (r2 != r11) goto L_0x008d;
    L_0x0081:
        r2 = r4[r2];
        r2 = (java.lang.Object[]) r2;
        r2 = (java.lang.Object[]) r2;
        r4 = 0;
        r16 = r4;
        r4 = r2;
        r2 = r16;
    L_0x008d:
        r5 = r4[r2];
        r10.b_(r5);
        r14 = 1;
        r8 = r8 + r14;
        r5 = r2 + 1;
        r2 = r6 + 1;
        r6 = r2;
        r2 = r5;
        goto L_0x0036;
    L_0x009c:
        r0 = r17;
        r7 = r0.f;
        r0 = r17;
        r5 = r0.b;
        if (r6 != r5) goto L_0x00bc;
    L_0x00a6:
        r5 = 1;
    L_0x00a7:
        if (r7 == 0) goto L_0x00c2;
    L_0x00a9:
        if (r5 == 0) goto L_0x00c2;
    L_0x00ab:
        r2 = 0;
        r0 = r18;
        r0.node = r2;
        r0 = r17;
        r2 = r0.g;
        if (r2 == 0) goto L_0x00be;
    L_0x00b6:
        r10.a(r2);
    L_0x00b9:
        r2 = 0;
        goto L_0x0007;
    L_0x00bc:
        r5 = 0;
        goto L_0x00a7;
    L_0x00be:
        r10.bs_();
        goto L_0x00b9;
    L_0x00c2:
        r14 = 0;
        r5 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1));
        if (r5 == 0) goto L_0x00d8;
    L_0x00c8:
        r14 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r5 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r5 == 0) goto L_0x00d8;
    L_0x00d1:
        r0 = r18;
        r5 = r0.requested;
        rx.internal.operators.a.b(r5, r8);
    L_0x00d8:
        r0 = r18;
        r0.index = r6;
        r0 = r18;
        r0.tailIndex = r2;
        r0 = r18;
        r0.node = r4;
        r2 = -r3;
        r0 = r18;
        r2 = r0.addAndGet(r2);
        if (r2 != 0) goto L_0x00fc;
    L_0x00ed:
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r2 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1));
        if (r2 != 0) goto L_0x00f9;
    L_0x00f6:
        r2 = 1;
        goto L_0x0007;
    L_0x00f9:
        r2 = 0;
        goto L_0x0007;
    L_0x00fc:
        r3 = r2;
        goto L_0x0012;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.subjects.h.a(rx.subjects.ReplaySubject$ReplayProducer):boolean");
    }
}
