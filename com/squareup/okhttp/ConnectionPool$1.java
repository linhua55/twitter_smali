package com.squareup.okhttp;

/* compiled from: Twttr */
class ConnectionPool$1 implements Runnable {
    final /* synthetic */ ConnectionPool this$0;

    ConnectionPool$1(ConnectionPool connectionPool) {
        this.this$0 = connectionPool;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r8 = this;
        r6 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
    L_0x0003:
        r0 = r8.this$0;
        r2 = java.lang.System.nanoTime();
        r0 = r0.cleanup(r2);
        r2 = -1;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 != 0) goto L_0x0014;
    L_0x0013:
        return;
    L_0x0014:
        r2 = 0;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 <= 0) goto L_0x0003;
    L_0x001a:
        r2 = r0 / r6;
        r4 = r2 * r6;
        r0 = r0 - r4;
        r4 = r8.this$0;
        monitor-enter(r4);
        r5 = r8.this$0;	 Catch:{ InterruptedException -> 0x002d }
        r0 = (int) r0;	 Catch:{ InterruptedException -> 0x002d }
        r5.wait(r2, r0);	 Catch:{ InterruptedException -> 0x002d }
    L_0x0028:
        monitor-exit(r4);	 Catch:{ all -> 0x002a }
        goto L_0x0003;
    L_0x002a:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x002a }
        throw r0;
    L_0x002d:
        r0 = move-exception;
        goto L_0x0028;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.ConnectionPool$1.run():void");
    }
}
