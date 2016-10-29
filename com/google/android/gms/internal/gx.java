package com.google.android.gms.internal;

import android.os.RemoteException;

class gx implements hl {
    final /* synthetic */ ml a;
    final /* synthetic */ gw b;

    gx(gw gwVar, ml mlVar) {
        this.b = gwVar;
        this.a = mlVar;
    }

    public void a(hm hmVar) throws RemoteException {
        if (hmVar.c != null) {
            hmVar.c.a(this.a);
        }
    }
}
