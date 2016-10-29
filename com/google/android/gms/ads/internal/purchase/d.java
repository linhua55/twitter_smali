package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.qd;

class d implements Runnable {
    final /* synthetic */ g a;
    final /* synthetic */ Intent b;
    final /* synthetic */ c c;

    d(c cVar, g gVar, Intent intent) {
        this.c = cVar;
        this.a = gVar;
        this.b = intent;
    }

    public void run() {
        try {
            if (c.a(this.c).a(this.a.b, -1, this.b)) {
                c.c(this.c).a(new h(c.b(this.c), this.a.c, true, -1, this.b, this.a));
            } else {
                c.c(this.c).a(new h(c.b(this.c), this.a.c, false, -1, this.b, this.a));
            }
        } catch (RemoteException e) {
            qd.d("Fail to verify and dispatch pending transaction");
        }
    }
}
