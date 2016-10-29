package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.am;
import rx.internal.operators.NotificationLite;
import rx.r;

/* compiled from: Twttr */
public final class n<T> implements r<T> {
    final am<? super T> a;
    boolean b;
    boolean c;
    List<Object> d;
    boolean e;

    public n(am<? super T> amVar) {
        this.b = true;
        this.a = amVar;
    }

    public void b_(T t) {
        this.a.b_(t);
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void bs_() {
        this.a.bs_();
    }

    protected void a(Object obj, NotificationLite<T> notificationLite) {
        if (!this.e) {
            synchronized (this) {
                this.b = false;
                if (this.c) {
                    if (this.d == null) {
                        this.d = new ArrayList();
                    }
                    this.d.add(obj);
                    return;
                }
                this.e = true;
            }
        }
        notificationLite.a(this.a, obj);
    }

    protected void b(Object obj, NotificationLite<T> notificationLite) {
        boolean z = false;
        synchronized (this) {
            if (!this.b || this.c) {
                return;
            }
            this.b = false;
            if (obj != null) {
                z = true;
            }
            this.c = z;
            if (obj != null) {
                a(null, obj, notificationLite);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void a(java.util.List<java.lang.Object> r6, java.lang.Object r7, rx.internal.operators.NotificationLite<T> r8) {
        /*
        r5 = this;
        r1 = 1;
        r2 = 0;
        r0 = r1;
    L_0x0003:
        if (r6 == 0) goto L_0x0020;
    L_0x0005:
        r3 = r6.iterator();	 Catch:{ all -> 0x0017 }
    L_0x0009:
        r4 = r3.hasNext();	 Catch:{ all -> 0x0017 }
        if (r4 == 0) goto L_0x0020;
    L_0x000f:
        r4 = r3.next();	 Catch:{ all -> 0x0017 }
        r5.c(r4, r8);	 Catch:{ all -> 0x0017 }
        goto L_0x0009;
    L_0x0017:
        r0 = move-exception;
    L_0x0018:
        if (r2 != 0) goto L_0x001f;
    L_0x001a:
        monitor-enter(r5);
        r1 = 0;
        r5.c = r1;	 Catch:{ all -> 0x003c }
        monitor-exit(r5);	 Catch:{ all -> 0x003c }
    L_0x001f:
        throw r0;
    L_0x0020:
        if (r0 == 0) goto L_0x0026;
    L_0x0022:
        r5.c(r7, r8);	 Catch:{ all -> 0x0017 }
        r0 = r2;
    L_0x0026:
        monitor-enter(r5);	 Catch:{ all -> 0x0017 }
        r6 = r5.d;	 Catch:{ all -> 0x0035 }
        r3 = 0;
        r5.d = r3;	 Catch:{ all -> 0x0035 }
        if (r6 != 0) goto L_0x0033;
    L_0x002e:
        r0 = 0;
        r5.c = r0;	 Catch:{ all -> 0x0035 }
        monitor-exit(r5);	 Catch:{ all -> 0x003f }
        return;
    L_0x0033:
        monitor-exit(r5);	 Catch:{ all -> 0x0035 }
        goto L_0x0003;
    L_0x0035:
        r0 = move-exception;
        r1 = r2;
    L_0x0037:
        monitor-exit(r5);	 Catch:{ all -> 0x003f }
        throw r0;	 Catch:{ all -> 0x0039 }
    L_0x0039:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0018;
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x003c }
        throw r0;
    L_0x003f:
        r0 = move-exception;
        goto L_0x0037;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.subjects.n.a(java.util.List, java.lang.Object, rx.internal.operators.NotificationLite):void");
    }

    protected void c(Object obj, NotificationLite<T> notificationLite) {
        if (obj != null) {
            notificationLite.a(this.a, obj);
        }
    }
}
