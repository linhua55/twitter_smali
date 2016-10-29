package rx.internal.producers;

import rx.s;

/* compiled from: Twttr */
public final class a implements s {
    static final s g;
    long a;
    s b;
    boolean c;
    long d;
    long e;
    s f;

    static {
        g = new b();
    }

    public void a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (j != 0) {
            synchronized (this) {
                if (this.c) {
                    this.d += j;
                    return;
                }
                this.c = true;
                try {
                    long j2 = this.a + j;
                    if (j2 < 0) {
                        j2 = Long.MAX_VALUE;
                    }
                    this.a = j2;
                    s sVar = this.b;
                    if (sVar != null) {
                        sVar.a(j);
                    }
                    a();
                } catch (Throwable th) {
                    synchronized (this) {
                    }
                    this.c = false;
                }
            }
        }
    }

    public void b(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("n > 0 required");
        }
        synchronized (this) {
            if (this.c) {
                this.e += j;
                return;
            }
            this.c = true;
            try {
                long j2 = this.a;
                if (j2 != Long.MAX_VALUE) {
                    j2 -= j;
                    if (j2 < 0) {
                        throw new IllegalStateException("more items arrived than were requested");
                    }
                    this.a = j2;
                }
                a();
            } catch (Throwable th) {
                synchronized (this) {
                }
                this.c = false;
            }
        }
    }

    public void a(s sVar) {
        synchronized (this) {
            if (this.c) {
                if (sVar == null) {
                    sVar = g;
                }
                this.f = sVar;
                return;
            }
            this.c = true;
            try {
                this.b = sVar;
                if (sVar != null) {
                    sVar.a(this.a);
                }
                a();
            } catch (Throwable th) {
                synchronized (this) {
                }
                this.c = false;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r13 = this;
        r12 = 0;
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r10 = 0;
    L_0x0008:
        monitor-enter(r13);
        r4 = r13.d;	 Catch:{ all -> 0x0045 }
        r6 = r13.e;	 Catch:{ all -> 0x0045 }
        r8 = r13.f;	 Catch:{ all -> 0x0045 }
        r0 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r0 != 0) goto L_0x001e;
    L_0x0013:
        r0 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r0 != 0) goto L_0x001e;
    L_0x0017:
        if (r8 != 0) goto L_0x001e;
    L_0x0019:
        r0 = 0;
        r13.c = r0;	 Catch:{ all -> 0x0045 }
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        return;
    L_0x001e:
        r0 = 0;
        r13.d = r0;	 Catch:{ all -> 0x0045 }
        r0 = 0;
        r13.e = r0;	 Catch:{ all -> 0x0045 }
        r0 = 0;
        r13.f = r0;	 Catch:{ all -> 0x0045 }
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        r0 = r13.a;
        r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r9 == 0) goto L_0x003c;
    L_0x0030:
        r0 = r0 + r4;
        r9 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1));
        if (r9 < 0) goto L_0x0039;
    L_0x0035:
        r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r9 != 0) goto L_0x0048;
    L_0x0039:
        r13.a = r2;
        r0 = r2;
    L_0x003c:
        if (r8 == 0) goto L_0x005f;
    L_0x003e:
        r4 = g;
        if (r8 != r4) goto L_0x0059;
    L_0x0042:
        r13.b = r12;
        goto L_0x0008;
    L_0x0045:
        r0 = move-exception;
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        throw r0;
    L_0x0048:
        r0 = r0 - r6;
        r6 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1));
        if (r6 >= 0) goto L_0x0056;
    L_0x004d:
        r0 = new java.lang.IllegalStateException;
        r1 = "more produced than requested";
        r0.<init>(r1);
        throw r0;
    L_0x0056:
        r13.a = r0;
        goto L_0x003c;
    L_0x0059:
        r13.b = r8;
        r8.a(r0);
        goto L_0x0008;
    L_0x005f:
        r0 = r13.b;
        if (r0 == 0) goto L_0x0008;
    L_0x0063:
        r1 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r1 == 0) goto L_0x0008;
    L_0x0067:
        r0.a(r4);
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.a.a():void");
    }
}
