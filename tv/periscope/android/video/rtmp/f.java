package tv.periscope.android.video.rtmp;

import defpackage.dcv;

/* compiled from: Twttr */
public class f {
    private static final f a;
    private long b;
    private g c;
    private long d;

    static {
        a = new f();
    }

    private f() {
        b();
    }

    public static f a() {
        return a;
    }

    synchronized void b() {
        if (this.c == null || !this.c.a) {
            this.c = new g(this);
        }
    }

    public synchronized boolean c() {
        return this.d != 0;
    }

    public long d() {
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            j = this.b;
            long j2 = this.d;
            if (j == 0 || j2 == 0 || currentTimeMillis - j2 > 3600000) {
                dcv.e("NTPTime", "Requesting clock update");
                b();
            }
        }
        return currentTimeMillis + j;
    }
}
