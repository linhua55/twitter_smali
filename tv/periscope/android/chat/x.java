package tv.periscope.android.chat;

import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import tv.periscope.model.chat.MessageType.Throttle;

/* compiled from: Twttr */
abstract class x {
    private static final long b;
    protected long a;
    private final Map<Throttle, j<w>> c;
    private long d;
    private final boolean e;
    private int[] f;
    private boolean g;
    private boolean h;
    private final int i;
    private String j;

    protected abstract long a(long j);

    protected abstract long b(long j);

    static {
        b = TimeUnit.SECONDS.toMillis(8);
    }

    public x(boolean z, Map<Throttle, j<w>> map, int i) {
        this.f = new int[0];
        this.e = z;
        this.c = map;
        this.i = i;
    }

    void c(long j) {
        long b;
        if (this.e) {
            b = b(j);
        } else {
            b = this.d + b(j);
        }
        this.a = b;
        this.j = "";
    }

    void a(boolean z, boolean z2) {
        synchronized (this.f) {
            this.h = z;
            this.g = z2;
        }
    }

    private int a(Throttle throttle) {
        j jVar = (j) this.c.get(throttle);
        if (jVar != null) {
            return jVar.e();
        }
        return 0;
    }

    private int d() {
        int i = 0;
        for (j e : this.c.values()) {
            i = e.e() + i;
        }
        return i;
    }

    boolean a() {
        boolean z;
        boolean z2;
        synchronized (this.f) {
            z = this.h;
            z2 = this.g;
        }
        return z || (z2 && (f() || e()));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.util.List<tv.periscope.android.chat.w> r11, boolean r12, java.lang.String r13) {
        /*
        r10 = this;
        r0 = 0;
        r4 = r11.iterator();
        r2 = r0;
    L_0x0007:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x0059;
    L_0x000d:
        r0 = r4.next();
        r0 = (tv.periscope.android.chat.w) r0;
        r1 = tv.periscope.android.chat.y.a;
        r5 = r0.a;
        r5 = r5.ordinal();
        r1 = r1[r5];
        switch(r1) {
            case 1: goto L_0x0023;
            case 2: goto L_0x003e;
            case 3: goto L_0x003e;
            case 4: goto L_0x003e;
            case 5: goto L_0x003e;
            case 6: goto L_0x003e;
            case 7: goto L_0x003e;
            default: goto L_0x0020;
        };
    L_0x0020:
        r0 = r2;
    L_0x0021:
        r2 = r0;
        goto L_0x0007;
    L_0x0023:
        r1 = r0.b;
        r1 = r1.n();
        if (r1 == 0) goto L_0x0030;
    L_0x002b:
        r6 = r1.doubleValue();
        r2 = r2 + r6;
    L_0x0030:
        r6 = r10.d;
        r8 = 0;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 != 0) goto L_0x0020;
    L_0x0038:
        r0 = r0.c;
        r10.d = r0;
        r0 = r2;
        goto L_0x0021;
    L_0x003e:
        r6 = r10.d;
        r8 = 0;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 != 0) goto L_0x004a;
    L_0x0046:
        r6 = r0.c;
        r10.d = r6;
    L_0x004a:
        r6 = r0.c;
        r8 = r10.d;
        r6 = r6 - r8;
        r6 = r10.a(r6);
        r8 = (long) r2;
        r6 = r6 - r8;
        r0.a(r6);
        goto L_0x0020;
    L_0x0059:
        r1 = r10.a(r11, r12);
        if (r1 != 0) goto L_0x0061;
    L_0x005f:
        if (r12 == 0) goto L_0x0092;
    L_0x0061:
        r0 = 1;
    L_0x0062:
        r10.a(r1, r0);
        r2 = "Replayer";
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r3 = "Will fetch asap because of buffer time? ";
        r0 = r0.append(r3);
        r0 = r0.append(r1);
        r3 = ". because may have more? ";
        r3 = r0.append(r3);
        if (r1 != 0) goto L_0x0083;
    L_0x0081:
        if (r12 == 0) goto L_0x0094;
    L_0x0083:
        r0 = 1;
    L_0x0084:
        r0 = r3.append(r0);
        r0 = r0.toString();
        defpackage.dcv.a(r2, r0);
        r10.j = r13;
        return;
    L_0x0092:
        r0 = 0;
        goto L_0x0062;
    L_0x0094:
        r0 = 0;
        goto L_0x0084;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.chat.x.a(java.util.List, boolean, java.lang.String):void");
    }

    private boolean e() {
        return a(Throttle.c) < this.i;
    }

    private boolean f() {
        return d() < this.i;
    }

    private boolean a(List<w> list, boolean z) {
        int size = list.size();
        if (size <= 0) {
            return false;
        }
        if (this.e && z) {
            long a = ((w) list.get(size - 1)).a();
            if (a == 0) {
                return false;
            }
            long a2 = a((List) list);
            if (a2 == 0) {
                return false;
            }
            if (a < a2 + b) {
                return true;
            }
        }
        return false;
    }

    private long a(List<w> list) {
        for (w a : list) {
            long a2 = a.a();
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }

    long b() {
        return this.a;
    }

    String c() {
        return this.j;
    }
}
