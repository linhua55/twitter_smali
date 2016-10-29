package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.n;
import com.google.android.gms.location.LocationRequest;

class f extends h {
    final /* synthetic */ LocationRequest b;
    final /* synthetic */ PendingIntent c;
    final /* synthetic */ d d;

    f(d dVar, n nVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        this.d = dVar;
        this.b = locationRequest;
        this.c = pendingIntent;
        super(nVar);
    }

    protected void a(ab abVar) throws RemoteException {
        abVar.a(this.b, this.c, new i(this));
    }

    protected /* synthetic */ void b(h hVar) throws RemoteException {
        a((ab) hVar);
    }
}
