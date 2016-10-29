package tv.periscope.android.video.rtmp;

import java.util.Date;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ j a;
    private LinkedBlockingQueue<i> b;
    private long c;
    private long d;
    private Date e;
    private Thread f;
    private boolean g;
    private long h;
    private long i;
    private Date j;
    private boolean k;

    public m(j jVar) {
        this.a = jVar;
        this.b = new LinkedBlockingQueue();
        this.h = 0;
        this.i = 0;
        this.j = null;
        this.k = false;
        this.f = new Thread(this);
        this.f.start();
    }

    public void a() {
        this.g = true;
        this.f.interrupt();
        try {
            this.f.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (this.k) {
                return;
            }
            if (this.e == null) {
                this.e = new Date();
                this.d = 0;
            }
            while (true) {
                i b = this.a.j.b(i2);
                if (b != null) {
                    b.a(bArr, i, i2);
                    this.b.add(b);
                    this.c += (long) i2;
                    return;
                }
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r8 = this;
        r1 = 0;
        r0 = r8.a;	 Catch:{ IOException -> 0x0061 }
        r0 = r0.c;	 Catch:{ IOException -> 0x0061 }
        r2 = r0.getOutputStream();	 Catch:{ IOException -> 0x0061 }
    L_0x000b:
        r0 = r8.b;	 Catch:{ InterruptedException -> 0x0018 }
        r0 = r0.take();	 Catch:{ InterruptedException -> 0x0018 }
        r0 = (tv.periscope.android.video.rtmp.i) r0;	 Catch:{ InterruptedException -> 0x0018 }
    L_0x0013:
        r3 = r8.g;	 Catch:{ IOException -> 0x0061 }
        if (r3 == 0) goto L_0x001e;
    L_0x0017:
        return;
    L_0x0018:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ IOException -> 0x0061 }
        r0 = r1;
        goto L_0x0013;
    L_0x001e:
        if (r0 == 0) goto L_0x002a;
    L_0x0020:
        monitor-enter(r8);	 Catch:{ IOException -> 0x0061 }
        r4 = r8.c;	 Catch:{ all -> 0x006f }
        r3 = r0.b;	 Catch:{ all -> 0x006f }
        r6 = (long) r3;	 Catch:{ all -> 0x006f }
        r4 = r4 - r6;
        r8.c = r4;	 Catch:{ all -> 0x006f }
        monitor-exit(r8);	 Catch:{ all -> 0x006f }
    L_0x002a:
        r3 = r0.a;	 Catch:{ IOException -> 0x0061 }
        r4 = 0;
        r5 = r0.b;	 Catch:{ IOException -> 0x0061 }
        r2.write(r3, r4, r5);	 Catch:{ IOException -> 0x0061 }
        r4 = r8.d;	 Catch:{ IOException -> 0x0061 }
        r3 = r0.b;	 Catch:{ IOException -> 0x0061 }
        r6 = (long) r3;	 Catch:{ IOException -> 0x0061 }
        r4 = r4 + r6;
        r8.d = r4;	 Catch:{ IOException -> 0x0061 }
        r3 = r8.a;	 Catch:{ IOException -> 0x0061 }
        r3 = r3.j;	 Catch:{ IOException -> 0x0061 }
        r3.a(r0);	 Catch:{ IOException -> 0x0061 }
        monitor-enter(r8);	 Catch:{ IOException -> 0x0061 }
        r0 = r8.k;	 Catch:{ all -> 0x005e }
        if (r0 == 0) goto L_0x005c;
    L_0x0048:
        r0 = r8.b;	 Catch:{ all -> 0x005e }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x005e }
        if (r0 == 0) goto L_0x005c;
    L_0x0050:
        r0 = r8.a;	 Catch:{ all -> 0x005e }
        r0 = r0.a;	 Catch:{ all -> 0x005e }
        r0.b();	 Catch:{ all -> 0x005e }
        r0 = 0;
        r8.k = r0;	 Catch:{ all -> 0x005e }
    L_0x005c:
        monitor-exit(r8);	 Catch:{ all -> 0x005e }
        goto L_0x000b;
    L_0x005e:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x005e }
        throw r0;	 Catch:{ IOException -> 0x0061 }
    L_0x0061:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = r8.a;
        r0 = r0.a;
        r0.b(r1);
        goto L_0x0017;
    L_0x006f:
        r0 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x006f }
        throw r0;	 Catch:{ IOException -> 0x0061 }
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.video.rtmp.m.run():void");
    }
}
