package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.n;

class g extends h {
    final /* synthetic */ com.google.android.gms.location.g b;
    final /* synthetic */ d c;

    g(d dVar, n nVar, com.google.android.gms.location.g gVar) {
        this.c = dVar;
        this.b = gVar;
        super(nVar);
    }

    protected void a(ab abVar) throws RemoteException {
        abVar.a(this.b, new i(this));
    }

    protected /* synthetic */ void b(h hVar) throws RemoteException {
        a((ab) hVar);
    }
}
