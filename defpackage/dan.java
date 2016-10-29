package defpackage;

import rx.exceptions.e;
import rx.internal.operators.NotificationLite;
import rx.r;

/* compiled from: Twttr */
/* renamed from: dan */
public class dan<T> implements r<T> {
    private final r<? super T> a;
    private boolean b;
    private volatile boolean c;
    private dao d;
    private final NotificationLite<T> e;

    public dan(r<? super T> rVar) {
        this.e = NotificationLite.a();
        this.a = rVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b_(T r10) {
        /*
        r9 = this;
        r1 = 0;
        r8 = 1;
        r0 = r9.c;
        if (r0 == 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        monitor-enter(r9);
        r0 = r9.c;	 Catch:{ all -> 0x000e }
        if (r0 == 0) goto L_0x0011;
    L_0x000c:
        monitor-exit(r9);	 Catch:{ all -> 0x000e }
        goto L_0x0006;
    L_0x000e:
        r0 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x000e }
        throw r0;
    L_0x0011:
        r0 = r9.b;	 Catch:{ all -> 0x000e }
        if (r0 == 0) goto L_0x002b;
    L_0x0015:
        r0 = r9.d;	 Catch:{ all -> 0x000e }
        if (r0 != 0) goto L_0x0020;
    L_0x0019:
        r0 = new dao;	 Catch:{ all -> 0x000e }
        r0.<init>();	 Catch:{ all -> 0x000e }
        r9.d = r0;	 Catch:{ all -> 0x000e }
    L_0x0020:
        r1 = r9.e;	 Catch:{ all -> 0x000e }
        r1 = r1.a(r10);	 Catch:{ all -> 0x000e }
        r0.a(r1);	 Catch:{ all -> 0x000e }
        monitor-exit(r9);	 Catch:{ all -> 0x000e }
        goto L_0x0006;
    L_0x002b:
        r0 = 1;
        r9.b = r0;	 Catch:{ all -> 0x000e }
        monitor-exit(r9);	 Catch:{ all -> 0x000e }
        r0 = r9.a;	 Catch:{ Throwable -> 0x0046 }
        r0.b_(r10);	 Catch:{ Throwable -> 0x0046 }
    L_0x0034:
        r2 = r1;
    L_0x0035:
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        if (r2 >= r0) goto L_0x0034;
    L_0x0039:
        monitor-enter(r9);
        r0 = r9.d;	 Catch:{ all -> 0x0043 }
        if (r0 != 0) goto L_0x004f;
    L_0x003e:
        r0 = 0;
        r9.b = r0;	 Catch:{ all -> 0x0043 }
        monitor-exit(r9);	 Catch:{ all -> 0x0043 }
        goto L_0x0006;
    L_0x0043:
        r0 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x0043 }
        throw r0;
    L_0x0046:
        r0 = move-exception;
        r9.c = r8;
        r1 = r9.a;
        rx.exceptions.e.a(r0, r1, r10);
        goto L_0x0006;
    L_0x004f:
        r3 = 0;
        r9.d = r3;	 Catch:{ all -> 0x0043 }
        monitor-exit(r9);	 Catch:{ all -> 0x0043 }
        r3 = r0.a;
        r4 = r3.length;
        r0 = r1;
    L_0x0057:
        if (r0 >= r4) goto L_0x005d;
    L_0x0059:
        r5 = r3[r0];
        if (r5 != 0) goto L_0x0061;
    L_0x005d:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0035;
    L_0x0061:
        r6 = r9.e;	 Catch:{ Throwable -> 0x006f }
        r7 = r9.a;	 Catch:{ Throwable -> 0x006f }
        r5 = r6.a(r7, r5);	 Catch:{ Throwable -> 0x006f }
        if (r5 == 0) goto L_0x007f;
    L_0x006b:
        r0 = 1;
        r9.c = r0;	 Catch:{ Throwable -> 0x006f }
        goto L_0x0006;
    L_0x006f:
        r0 = move-exception;
        r9.c = r8;
        rx.exceptions.e.a(r0);
        r1 = r9.a;
        r0 = rx.exceptions.OnErrorThrowable.a(r0, r10);
        r1.a(r0);
        goto L_0x0006;
    L_0x007f:
        r0 = r0 + 1;
        goto L_0x0057;
        */
        throw new UnsupportedOperationException("Method not decompiled: dan.b_(java.lang.Object):void");
    }

    public void a(Throwable th) {
        e.a(th);
        if (!this.c) {
            synchronized (this) {
                if (this.c) {
                    return;
                }
                this.c = true;
                if (this.b) {
                    dao dao = this.d;
                    if (dao == null) {
                        dao = new dao();
                        this.d = dao;
                    }
                    dao.a(this.e.a(th));
                    return;
                }
                this.b = true;
                this.a.a(th);
            }
        }
    }

    public void bs_() {
        if (!this.c) {
            synchronized (this) {
                if (this.c) {
                    return;
                }
                this.c = true;
                if (this.b) {
                    dao dao = this.d;
                    if (dao == null) {
                        dao = new dao();
                        this.d = dao;
                    }
                    dao.a(this.e.b());
                    return;
                }
                this.b = true;
                this.a.bs_();
            }
        }
    }
}
