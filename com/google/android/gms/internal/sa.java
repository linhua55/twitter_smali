package com.google.android.gms.internal;

class sa implements Runnable {
    final /* synthetic */ rz a;

    sa(rz rzVar) {
        this.a = rzVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r2 = this;
        r0 = r2.a;
        r1 = com.google.android.gms.internal.rz.a(r0);
        monitor-enter(r1);
        r0 = "Suspending the looper thread";
        com.google.android.gms.internal.qd.e(r0);	 Catch:{ all -> 0x002d }
    L_0x000d:
        r0 = r2.a;	 Catch:{ all -> 0x002d }
        r0 = com.google.android.gms.internal.rz.b(r0);	 Catch:{ all -> 0x002d }
        if (r0 != 0) goto L_0x0030;
    L_0x0015:
        r0 = r2.a;	 Catch:{ InterruptedException -> 0x0025 }
        r0 = com.google.android.gms.internal.rz.a(r0);	 Catch:{ InterruptedException -> 0x0025 }
        r0.wait();	 Catch:{ InterruptedException -> 0x0025 }
        r0 = "Looper thread resumed";
        com.google.android.gms.internal.qd.e(r0);	 Catch:{ InterruptedException -> 0x0025 }
        goto L_0x000d;
    L_0x0025:
        r0 = move-exception;
        r0 = "Looper thread interrupted.";
        com.google.android.gms.internal.qd.e(r0);	 Catch:{ all -> 0x002d }
        goto L_0x000d;
    L_0x002d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x002d }
        throw r0;
    L_0x0030:
        monitor-exit(r1);	 Catch:{ all -> 0x002d }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.sa.run():void");
    }
}
