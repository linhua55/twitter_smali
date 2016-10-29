package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.w;

class ay implements Runnable {
    final /* synthetic */ w a;
    final /* synthetic */ ax b;

    ay(ax axVar, w wVar) {
        this.b = axVar;
        this.a = wVar;
    }

    @WorkerThread
    public void run() {
        n nVar;
        try {
            this.b.h.sendMessage(this.b.h.obtainMessage(0, this.b.a.a(this.a)));
            this.b.b(this.a);
            nVar = (n) this.b.g.get();
            if (nVar != null) {
                nVar.b(this.b);
            }
        } catch (RuntimeException e) {
            this.b.h.sendMessage(this.b.h.obtainMessage(1, e));
            this.b.b(this.a);
            nVar = (n) this.b.g.get();
            if (nVar != null) {
                nVar.b(this.b);
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            this.b.b(this.a);
            nVar = (n) this.b.g.get();
            if (nVar != null) {
                nVar.b(this.b);
            }
        }
    }
}
