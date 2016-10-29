package com.google.android.gms.internal;

final class sj implements Runnable {
    final /* synthetic */ sg a;
    final /* synthetic */ sl b;
    final /* synthetic */ sm c;

    sj(sg sgVar, sl slVar, sm smVar) {
        this.a = sgVar;
        this.b = slVar;
        this.c = smVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r3 = this;
        r0 = r3.a;	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
        r1 = r3.b;	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
        r2 = r3.c;	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
        r2 = r2.get();	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
        r1 = r1.a(r2);	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
        r0.b(r1);	 Catch:{ CancellationException -> 0x001c, InterruptedException -> 0x001a, ExecutionException -> 0x0012 }
    L_0x0011:
        return;
    L_0x0012:
        r0 = move-exception;
    L_0x0013:
        r0 = r3.a;
        r1 = 1;
        r0.cancel(r1);
        goto L_0x0011;
    L_0x001a:
        r0 = move-exception;
        goto L_0x0013;
    L_0x001c:
        r0 = move-exception;
        goto L_0x0013;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.sj.run():void");
    }
}
