package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;

public class ab extends a {
    private final x e;

    public ab(Context context, Looper looper, q qVar, r rVar, String str, w wVar) {
        super(context, looper, qVar, rVar, str, wVar);
        this.e = new x(context, this.a);
    }

    public void a(LocationRequest locationRequest, PendingIntent pendingIntent, l lVar) throws RemoteException {
        this.e.a(locationRequest, pendingIntent, lVar);
    }

    public void a(LocationRequest locationRequest, g gVar, Looper looper, l lVar) throws RemoteException {
        synchronized (this.e) {
            this.e.a(locationRequest, gVar, looper, lVar);
        }
    }

    public void a(g gVar, l lVar) throws RemoteException {
        this.e.a(gVar, lVar);
    }

    public Location c() {
        return this.e.a();
    }

    public void d() {
        synchronized (this.e) {
            if (e()) {
                try {
                    this.e.b();
                    this.e.c();
                } catch (Throwable e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.d();
        }
    }
}
