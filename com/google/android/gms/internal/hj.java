package com.google.android.gms.internal;

import android.os.RemoteException;

class hj implements hl {
    final /* synthetic */ int a;
    final /* synthetic */ hc b;

    hj(hc hcVar, int i) {
        this.b = hcVar;
        this.a = i;
    }

    public void a(hm hmVar) throws RemoteException {
        if (hmVar.f != null) {
            hmVar.f.a(this.a);
        }
    }
}
