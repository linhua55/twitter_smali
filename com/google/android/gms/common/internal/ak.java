package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class ak implements Callback {
    final ArrayList<q> a;
    private final al b;
    private final ArrayList<q> c;
    private final ArrayList<r> d;
    private volatile boolean e;
    private final AtomicInteger f;
    private boolean g;
    private final Handler h;
    private final Object i;

    public ak(Looper looper, al alVar) {
        this.c = new ArrayList();
        this.a = new ArrayList();
        this.d = new ArrayList();
        this.e = false;
        this.f = new AtomicInteger(0);
        this.g = false;
        this.i = new Object();
        this.b = alVar;
        this.h = new Handler(looper, this);
    }

    public void a() {
        this.e = false;
        this.f.incrementAndGet();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r6) {
        /*
        r5 = this;
        r0 = 0;
        r1 = 1;
        r2 = android.os.Looper.myLooper();
        r3 = r5.h;
        r3 = r3.getLooper();
        if (r2 != r3) goto L_0x000f;
    L_0x000e:
        r0 = r1;
    L_0x000f:
        r2 = "onUnintentionalDisconnection must only be called on the Handler thread";
        com.google.android.gms.common.internal.bm.a(r0, r2);
        r0 = r5.h;
        r0.removeMessages(r1);
        r1 = r5.i;
        monitor-enter(r1);
        r0 = 1;
        r5.g = r0;	 Catch:{ all -> 0x005f }
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x005f }
        r2 = r5.c;	 Catch:{ all -> 0x005f }
        r0.<init>(r2);	 Catch:{ all -> 0x005f }
        r2 = r5.f;	 Catch:{ all -> 0x005f }
        r2 = r2.get();	 Catch:{ all -> 0x005f }
        r3 = r0.iterator();	 Catch:{ all -> 0x005f }
    L_0x0031:
        r0 = r3.hasNext();	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x0049;
    L_0x0037:
        r0 = r3.next();	 Catch:{ all -> 0x005f }
        r0 = (com.google.android.gms.common.api.q) r0;	 Catch:{ all -> 0x005f }
        r4 = r5.e;	 Catch:{ all -> 0x005f }
        if (r4 == 0) goto L_0x0049;
    L_0x0041:
        r4 = r5.f;	 Catch:{ all -> 0x005f }
        r4 = r4.get();	 Catch:{ all -> 0x005f }
        if (r4 == r2) goto L_0x0053;
    L_0x0049:
        r0 = r5.a;	 Catch:{ all -> 0x005f }
        r0.clear();	 Catch:{ all -> 0x005f }
        r0 = 0;
        r5.g = r0;	 Catch:{ all -> 0x005f }
        monitor-exit(r1);	 Catch:{ all -> 0x005f }
        return;
    L_0x0053:
        r4 = r5.c;	 Catch:{ all -> 0x005f }
        r4 = r4.contains(r0);	 Catch:{ all -> 0x005f }
        if (r4 == 0) goto L_0x0031;
    L_0x005b:
        r0.a(r6);	 Catch:{ all -> 0x005f }
        goto L_0x0031;
    L_0x005f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x005f }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ak.a(int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.os.Bundle r6) {
        /*
        r5 = this;
        r2 = 0;
        r1 = 1;
        r0 = android.os.Looper.myLooper();
        r3 = r5.h;
        r3 = r3.getLooper();
        if (r0 != r3) goto L_0x006f;
    L_0x000e:
        r0 = r1;
    L_0x000f:
        r3 = "onConnectionSuccess must only be called on the Handler thread";
        com.google.android.gms.common.internal.bm.a(r0, r3);
        r3 = r5.i;
        monitor-enter(r3);
        r0 = r5.g;	 Catch:{ all -> 0x0081 }
        if (r0 != 0) goto L_0x0071;
    L_0x001c:
        r0 = r1;
    L_0x001d:
        com.google.android.gms.common.internal.bm.a(r0);	 Catch:{ all -> 0x0081 }
        r0 = r5.h;	 Catch:{ all -> 0x0081 }
        r4 = 1;
        r0.removeMessages(r4);	 Catch:{ all -> 0x0081 }
        r0 = 1;
        r5.g = r0;	 Catch:{ all -> 0x0081 }
        r0 = r5.a;	 Catch:{ all -> 0x0081 }
        r0 = r0.size();	 Catch:{ all -> 0x0081 }
        if (r0 != 0) goto L_0x0073;
    L_0x0031:
        com.google.android.gms.common.internal.bm.a(r1);	 Catch:{ all -> 0x0081 }
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0081 }
        r1 = r5.c;	 Catch:{ all -> 0x0081 }
        r0.<init>(r1);	 Catch:{ all -> 0x0081 }
        r1 = r5.f;	 Catch:{ all -> 0x0081 }
        r1 = r1.get();	 Catch:{ all -> 0x0081 }
        r2 = r0.iterator();	 Catch:{ all -> 0x0081 }
    L_0x0045:
        r0 = r2.hasNext();	 Catch:{ all -> 0x0081 }
        if (r0 == 0) goto L_0x0065;
    L_0x004b:
        r0 = r2.next();	 Catch:{ all -> 0x0081 }
        r0 = (com.google.android.gms.common.api.q) r0;	 Catch:{ all -> 0x0081 }
        r4 = r5.e;	 Catch:{ all -> 0x0081 }
        if (r4 == 0) goto L_0x0065;
    L_0x0055:
        r4 = r5.b;	 Catch:{ all -> 0x0081 }
        r4 = r4.e();	 Catch:{ all -> 0x0081 }
        if (r4 == 0) goto L_0x0065;
    L_0x005d:
        r4 = r5.f;	 Catch:{ all -> 0x0081 }
        r4 = r4.get();	 Catch:{ all -> 0x0081 }
        if (r4 == r1) goto L_0x0075;
    L_0x0065:
        r0 = r5.a;	 Catch:{ all -> 0x0081 }
        r0.clear();	 Catch:{ all -> 0x0081 }
        r0 = 0;
        r5.g = r0;	 Catch:{ all -> 0x0081 }
        monitor-exit(r3);	 Catch:{ all -> 0x0081 }
        return;
    L_0x006f:
        r0 = r2;
        goto L_0x000f;
    L_0x0071:
        r0 = r2;
        goto L_0x001d;
    L_0x0073:
        r1 = r2;
        goto L_0x0031;
    L_0x0075:
        r4 = r5.a;	 Catch:{ all -> 0x0081 }
        r4 = r4.contains(r0);	 Catch:{ all -> 0x0081 }
        if (r4 != 0) goto L_0x0045;
    L_0x007d:
        r0.a(r6);	 Catch:{ all -> 0x0081 }
        goto L_0x0045;
    L_0x0081:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0081 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ak.a(android.os.Bundle):void");
    }

    public void a(ConnectionResult connectionResult) {
        bm.a(Looper.myLooper() == this.h.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.h.removeMessages(1);
        synchronized (this.i) {
            ArrayList arrayList = new ArrayList(this.d);
            int i = this.f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                r rVar = (r) it.next();
                if (!this.e || this.f.get() != i) {
                    return;
                } else if (this.d.contains(rVar)) {
                    rVar.a(connectionResult);
                }
            }
        }
    }

    public void a(q qVar) {
        bm.a(qVar);
        synchronized (this.i) {
            if (this.c.contains(qVar)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + qVar + " is already registered");
            } else {
                this.c.add(qVar);
            }
        }
        if (this.b.e()) {
            this.h.sendMessage(this.h.obtainMessage(1, qVar));
        }
    }

    public void a(r rVar) {
        bm.a(rVar);
        synchronized (this.i) {
            if (this.d.contains(rVar)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + rVar + " is already registered");
            } else {
                this.d.add(rVar);
            }
        }
    }

    public void b() {
        this.e = true;
    }

    public void b(r rVar) {
        bm.a(rVar);
        synchronized (this.i) {
            if (!this.d.remove(rVar)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + rVar + " not found");
            }
        }
    }

    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            q qVar = (q) message.obj;
            synchronized (this.i) {
                if (this.e && this.b.e() && this.c.contains(qVar)) {
                    qVar.a(this.b.c_());
                }
            }
            return true;
        }
        Log.wtf("GmsClientEvents", "Don't know how to handle message: " + message.what, new Exception());
        return false;
    }
}
