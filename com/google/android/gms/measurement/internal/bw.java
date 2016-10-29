package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.FutureTask;

final class bw extends Thread {
    final /* synthetic */ bt a;
    private final Object b;
    private final BlockingQueue<FutureTask<?>> c;

    public bw(bt btVar, String str, BlockingQueue<FutureTask<?>> blockingQueue) {
        this.a = btVar;
        bm.a(str);
        this.b = new Object();
        this.c = blockingQueue;
        setName(str);
    }

    private void a(InterruptedException interruptedException) {
        this.a.s().c().a(getName() + " was interrupted", interruptedException);
    }

    public void a() {
        synchronized (this.b) {
            this.b.notifyAll();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r4 = this;
        r0 = 0;
        r1 = r0;
    L_0x0002:
        if (r1 != 0) goto L_0x0015;
    L_0x0004:
        r0 = r4.a;	 Catch:{ InterruptedException -> 0x0010 }
        r0 = com.google.android.gms.measurement.internal.bt.a(r0);	 Catch:{ InterruptedException -> 0x0010 }
        r0.acquire();	 Catch:{ InterruptedException -> 0x0010 }
        r0 = 1;
        r1 = r0;
        goto L_0x0002;
    L_0x0010:
        r0 = move-exception;
        r4.a(r0);
        goto L_0x0002;
    L_0x0015:
        r0 = r4.c;	 Catch:{ all -> 0x0023 }
        r0 = r0.poll();	 Catch:{ all -> 0x0023 }
        r0 = (java.util.concurrent.FutureTask) r0;	 Catch:{ all -> 0x0023 }
        if (r0 == 0) goto L_0x004d;
    L_0x001f:
        r0.run();	 Catch:{ all -> 0x0023 }
        goto L_0x0015;
    L_0x0023:
        r0 = move-exception;
        r1 = r4.a;
        r1 = com.google.android.gms.measurement.internal.bt.c(r1);
        monitor-enter(r1);
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r2 = com.google.android.gms.measurement.internal.bt.a(r2);	 Catch:{ all -> 0x00e2 }
        r2.release();	 Catch:{ all -> 0x00e2 }
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r2 = com.google.android.gms.measurement.internal.bt.c(r2);	 Catch:{ all -> 0x00e2 }
        r2.notifyAll();	 Catch:{ all -> 0x00e2 }
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r2 = com.google.android.gms.measurement.internal.bt.d(r2);	 Catch:{ all -> 0x00e2 }
        if (r4 != r2) goto L_0x00d2;
    L_0x0045:
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r3 = 0;
        com.google.android.gms.measurement.internal.bt.a(r2, r3);	 Catch:{ all -> 0x00e2 }
    L_0x004b:
        monitor-exit(r1);	 Catch:{ all -> 0x00e2 }
        throw r0;
    L_0x004d:
        r1 = r4.b;	 Catch:{ all -> 0x0023 }
        monitor-enter(r1);	 Catch:{ all -> 0x0023 }
        r0 = r4.c;	 Catch:{ all -> 0x00a6 }
        r0 = r0.peek();	 Catch:{ all -> 0x00a6 }
        if (r0 != 0) goto L_0x0067;
    L_0x0058:
        r0 = r4.a;	 Catch:{ all -> 0x00a6 }
        r0 = com.google.android.gms.measurement.internal.bt.b(r0);	 Catch:{ all -> 0x00a6 }
        if (r0 != 0) goto L_0x0067;
    L_0x0060:
        r0 = r4.b;	 Catch:{ InterruptedException -> 0x00a1 }
        r2 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r0.wait(r2);	 Catch:{ InterruptedException -> 0x00a1 }
    L_0x0067:
        monitor-exit(r1);	 Catch:{ all -> 0x00a6 }
        r0 = r4.a;	 Catch:{ all -> 0x0023 }
        r1 = com.google.android.gms.measurement.internal.bt.c(r0);	 Catch:{ all -> 0x0023 }
        monitor-enter(r1);	 Catch:{ all -> 0x0023 }
        r0 = r4.c;	 Catch:{ all -> 0x00cf }
        r0 = r0.peek();	 Catch:{ all -> 0x00cf }
        if (r0 != 0) goto L_0x00cc;
    L_0x0077:
        monitor-exit(r1);	 Catch:{ all -> 0x00cf }
        r0 = r4.a;
        r1 = com.google.android.gms.measurement.internal.bt.c(r0);
        monitor-enter(r1);
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r0 = com.google.android.gms.measurement.internal.bt.a(r0);	 Catch:{ all -> 0x00b8 }
        r0.release();	 Catch:{ all -> 0x00b8 }
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r0 = com.google.android.gms.measurement.internal.bt.c(r0);	 Catch:{ all -> 0x00b8 }
        r0.notifyAll();	 Catch:{ all -> 0x00b8 }
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r0 = com.google.android.gms.measurement.internal.bt.d(r0);	 Catch:{ all -> 0x00b8 }
        if (r4 != r0) goto L_0x00a9;
    L_0x0099:
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r2 = 0;
        com.google.android.gms.measurement.internal.bt.a(r0, r2);	 Catch:{ all -> 0x00b8 }
    L_0x009f:
        monitor-exit(r1);	 Catch:{ all -> 0x00b8 }
        return;
    L_0x00a1:
        r0 = move-exception;
        r4.a(r0);	 Catch:{ all -> 0x00a6 }
        goto L_0x0067;
    L_0x00a6:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00a6 }
        throw r0;	 Catch:{ all -> 0x0023 }
    L_0x00a9:
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r0 = com.google.android.gms.measurement.internal.bt.e(r0);	 Catch:{ all -> 0x00b8 }
        if (r4 != r0) goto L_0x00bb;
    L_0x00b1:
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r2 = 0;
        com.google.android.gms.measurement.internal.bt.b(r0, r2);	 Catch:{ all -> 0x00b8 }
        goto L_0x009f;
    L_0x00b8:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00b8 }
        throw r0;
    L_0x00bb:
        r0 = r4.a;	 Catch:{ all -> 0x00b8 }
        r0 = r0.s();	 Catch:{ all -> 0x00b8 }
        r0 = r0.b();	 Catch:{ all -> 0x00b8 }
        r2 = "Current scheduler thread is neither worker nor network";
        r0.a(r2);	 Catch:{ all -> 0x00b8 }
        goto L_0x009f;
    L_0x00cc:
        monitor-exit(r1);	 Catch:{ all -> 0x00cf }
        goto L_0x0015;
    L_0x00cf:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00cf }
        throw r0;	 Catch:{ all -> 0x0023 }
    L_0x00d2:
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r2 = com.google.android.gms.measurement.internal.bt.e(r2);	 Catch:{ all -> 0x00e2 }
        if (r4 != r2) goto L_0x00e5;
    L_0x00da:
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r3 = 0;
        com.google.android.gms.measurement.internal.bt.b(r2, r3);	 Catch:{ all -> 0x00e2 }
        goto L_0x004b;
    L_0x00e2:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00e2 }
        throw r0;
    L_0x00e5:
        r2 = r4.a;	 Catch:{ all -> 0x00e2 }
        r2 = r2.s();	 Catch:{ all -> 0x00e2 }
        r2 = r2.b();	 Catch:{ all -> 0x00e2 }
        r3 = "Current scheduler thread is neither worker nor network";
        r2.a(r3);	 Catch:{ all -> 0x00e2 }
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.bw.run():void");
    }
}
