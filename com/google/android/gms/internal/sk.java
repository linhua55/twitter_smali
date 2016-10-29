package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class sk implements Runnable {
    final /* synthetic */ AtomicInteger a;
    final /* synthetic */ int b;
    final /* synthetic */ sg c;
    final /* synthetic */ List d;

    sk(AtomicInteger atomicInteger, int i, sg sgVar, List list) {
        this.a = atomicInteger;
        this.b = i;
        this.c = sgVar;
        this.d = list;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r2 = this;
        r0 = r2.a;
        r0 = r0.incrementAndGet();
        r1 = r2.b;
        if (r0 < r1) goto L_0x0015;
    L_0x000a:
        r0 = r2.c;	 Catch:{ ExecutionException -> 0x001e, InterruptedException -> 0x0016 }
        r1 = r2.d;	 Catch:{ ExecutionException -> 0x001e, InterruptedException -> 0x0016 }
        r1 = com.google.android.gms.internal.si.b(r1);	 Catch:{ ExecutionException -> 0x001e, InterruptedException -> 0x0016 }
        r0.b(r1);	 Catch:{ ExecutionException -> 0x001e, InterruptedException -> 0x0016 }
    L_0x0015:
        return;
    L_0x0016:
        r0 = move-exception;
    L_0x0017:
        r1 = "Unable to convert list of futures to a future of list";
        com.google.android.gms.internal.qd.d(r1, r0);
        goto L_0x0015;
    L_0x001e:
        r0 = move-exception;
        goto L_0x0017;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.sk.run():void");
    }
}
