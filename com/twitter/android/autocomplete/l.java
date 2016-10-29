package com.twitter.android.autocomplete;

import android.os.Handler;
import android.util.Pair;
import cgu;
import cvi;
import java.lang.ref.WeakReference;
import sw;
import sx;

/* compiled from: Twttr */
class l<T, S> extends Thread implements sx<T, S> {
    private final Object a;
    private final WeakReference<sw<T, S>> b;
    private final Handler c;
    private final m<T> d;
    private boolean e;
    private boolean f;

    l(sw<T, S> swVar, n<T, S> nVar, m<T> mVar) {
        super("FilterThread");
        this.a = new Object();
        this.b = new WeakReference(swVar);
        this.c = new k(nVar);
        this.d = mVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r3 = this;
        com.twitter.util.h.c();
        r0 = 11;
        android.os.Process.setThreadPriority(r0);
    L_0x0008:
        r0 = r3.d;
        r0 = r0.a;
        r1 = r3.d;
        r1 = r1.b;
        r2 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        r0 = r0.a(r1, r2);
        if (r0 == 0) goto L_0x0051;
    L_0x0018:
        r1 = r3.a;
        monitor-enter(r1);
        r0 = 0;
        r3.e = r0;	 Catch:{ all -> 0x004a }
        monitor-exit(r1);	 Catch:{ all -> 0x004a }
        r0 = r3.b;
        r0 = r0.get();
        r0 = (sw) r0;
        if (r0 == 0) goto L_0x0064;
    L_0x0029:
        r1 = r3.d;
        r1 = r1.a;
        r1 = r1.a();
        r2 = r3.d;
        r2 = r2.b;
        r2 = com.twitter.util.object.ObjectUtils.a(r2, r1);
        if (r2 != 0) goto L_0x0008;
    L_0x003b:
        r2 = r3.d;
        r2.b = r1;
        if (r1 == 0) goto L_0x004d;
    L_0x0041:
        r0.a(r1, r3);	 Catch:{ Exception -> 0x0045 }
        goto L_0x0008;
    L_0x0045:
        r0 = move-exception;
        bbn.a(r0);
        goto L_0x0008;
    L_0x004a:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x004a }
        throw r0;
    L_0x004d:
        r0.a();	 Catch:{ Exception -> 0x0045 }
        goto L_0x0008;
    L_0x0051:
        r1 = r3.a;
        monitor-enter(r1);
        r0 = r3.e;	 Catch:{ all -> 0x005d }
        if (r0 == 0) goto L_0x0060;
    L_0x0058:
        r0 = 0;
        r3.e = r0;	 Catch:{ all -> 0x005d }
        monitor-exit(r1);	 Catch:{ all -> 0x005d }
        goto L_0x0008;
    L_0x005d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x005d }
        throw r0;
    L_0x0060:
        r0 = 1;
        r3.f = r0;	 Catch:{ all -> 0x005d }
        monitor-exit(r1);	 Catch:{ all -> 0x005d }
    L_0x0064:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.autocomplete.l.run():void");
    }

    public boolean a() {
        boolean z = true;
        synchronized (this.a) {
            if (this.f) {
                z = false;
            } else {
                this.e = true;
            }
        }
        return z;
    }

    public void a(T t) {
        if (this.d.a.a(t)) {
            this.c.sendEmptyMessage(-559038737);
        }
    }

    public void b() {
        if (this.d.a.a(null)) {
            this.c.sendEmptyMessage(-559038737);
        }
    }

    public void a(T t, cgu<? extends S> cgu__extends_S) {
        if (this.d.a.b(t)) {
            this.c.obtainMessage(-791613427, Pair.create(t, cgu__extends_S)).sendToTarget();
        } else {
            cvi.a(cgu__extends_S);
        }
    }
}
