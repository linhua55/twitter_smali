package com.google.android.gms.internal;

import android.os.RemoteException;

class gy extends df {
    final /* synthetic */ gn a;

    gy(gn gnVar) {
        this.a = gnVar;
    }

    public void a(db dbVar) throws RemoteException {
        gn.a(this.a).add(new gz(this, dbVar));
    }
}
