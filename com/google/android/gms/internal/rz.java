package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.bm;

@oi
public class rz {
    private HandlerThread a;
    private Handler b;
    private int c;
    private final Object d;

    public rz() {
        this.a = null;
        this.b = null;
        this.c = 0;
        this.d = new Object();
    }

    public Looper a() {
        Looper looper;
        synchronized (this.d) {
            if (this.c != 0) {
                bm.a(this.a, (Object) "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.a == null) {
                qd.e("Starting the looper thread.");
                this.a = new HandlerThread("LooperProvider");
                this.a.start();
                this.b = new Handler(this.a.getLooper());
                qd.e("Looper thread started.");
            } else {
                qd.e("Resuming the looper thread");
                this.d.notifyAll();
            }
            this.c++;
            looper = this.a.getLooper();
        }
        return looper;
    }

    public void b() {
        synchronized (this.d) {
            bm.b(this.c > 0, "Invalid state: release() called more times than expected.");
            int i = this.c - 1;
            this.c = i;
            if (i == 0) {
                this.b.post(new sa(this));
            }
        }
    }
}
