package de.greenrobot.event;

/* compiled from: Twttr */
final class b implements Runnable {
    private final k a;
    private final c b;
    private volatile boolean c;

    b(c cVar) {
        this.b = cVar;
        this.a = new k();
    }

    public void a(o oVar, Object obj) {
        j a = j.a(oVar, obj);
        synchronized (this) {
            this.a.a(a);
            if (!this.c) {
                this.c = true;
                this.b.c().execute(this);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r5 = this;
        r4 = 0;
    L_0x0001:
        r0 = r5.a;	 Catch:{ InterruptedException -> 0x0022 }
        r1 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0 = r0.a(r1);	 Catch:{ InterruptedException -> 0x0022 }
        if (r0 != 0) goto L_0x001c;
    L_0x000b:
        monitor-enter(r5);	 Catch:{ InterruptedException -> 0x0022 }
        r0 = r5.a;	 Catch:{ all -> 0x0048 }
        r0 = r0.a();	 Catch:{ all -> 0x0048 }
        if (r0 != 0) goto L_0x001b;
    L_0x0014:
        r0 = 0;
        r5.c = r0;	 Catch:{ all -> 0x0048 }
        monitor-exit(r5);	 Catch:{ all -> 0x0048 }
        r5.c = r4;
    L_0x001a:
        return;
    L_0x001b:
        monitor-exit(r5);	 Catch:{ all -> 0x0048 }
    L_0x001c:
        r1 = r5.b;	 Catch:{ InterruptedException -> 0x0022 }
        r1.a(r0);	 Catch:{ InterruptedException -> 0x0022 }
        goto L_0x0001;
    L_0x0022:
        r0 = move-exception;
        r1 = "Event";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r2.<init>();	 Catch:{ all -> 0x004b }
        r3 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x004b }
        r3 = r3.getName();	 Catch:{ all -> 0x004b }
        r2 = r2.append(r3);	 Catch:{ all -> 0x004b }
        r3 = " was interruppted";
        r2 = r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r2.toString();	 Catch:{ all -> 0x004b }
        android.util.Log.w(r1, r2, r0);	 Catch:{ all -> 0x004b }
        r5.c = r4;
        goto L_0x001a;
    L_0x0048:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0048 }
        throw r0;	 Catch:{ InterruptedException -> 0x0022 }
    L_0x004b:
        r0 = move-exception;
        r5.c = r4;
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: de.greenrobot.event.b.run():void");
    }
}
