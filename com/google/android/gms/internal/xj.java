package com.google.android.gms.internal;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

class xj {
    public static final boolean a;
    private final List<xk> b;
    private boolean c;

    static {
        a = xi.b;
    }

    xj() {
        this.b = new ArrayList();
        this.c = false;
    }

    private long a() {
        if (this.b.size() == 0) {
            return 0;
        }
        return ((xk) this.b.get(this.b.size() - 1)).c - ((xk) this.b.get(0)).c;
    }

    public synchronized void a(String str) {
        this.c = true;
        if (a() > 0) {
            long j = ((xk) this.b.get(0)).c;
            xi.b("(%-4d ms) %s", Long.valueOf(r2), str);
            long j2 = j;
            for (xk xkVar : this.b) {
                xi.b("(+%-4d) [%2d] %s", Long.valueOf(xkVar.c - j2), Long.valueOf(xkVar.b), xkVar.a);
                j2 = xkVar.c;
            }
        }
    }

    public synchronized void a(String str, long j) {
        if (this.c) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.b.add(new xk(str, j, SystemClock.elapsedRealtime()));
    }

    protected void finalize() throws Throwable {
        if (!this.c) {
            a("Request on the loose");
            xi.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}
