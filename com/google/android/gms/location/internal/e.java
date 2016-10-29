package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.n;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;

class e extends h {
    final /* synthetic */ LocationRequest b;
    final /* synthetic */ g c;
    final /* synthetic */ d d;

    e(d dVar, n nVar, LocationRequest locationRequest, g gVar) {
        this.d = dVar;
        this.b = locationRequest;
        this.c = gVar;
        super(nVar);
    }

    protected void a(ab abVar) throws RemoteException {
        abVar.a(this.b, this.c, null, new i(this));
    }

    protected /* synthetic */ void b(h hVar) throws RemoteException {
        a((ab) hVar);
    }
}
