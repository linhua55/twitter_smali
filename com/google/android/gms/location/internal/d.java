package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;

public class d implements com.google.android.gms.location.d {
    public Location a(n nVar) {
        try {
            return i.a(nVar).c();
        } catch (Exception e) {
            return null;
        }
    }

    public t<Status> a(n nVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return nVar.b(new f(this, nVar, locationRequest, pendingIntent));
    }

    public t<Status> a(n nVar, LocationRequest locationRequest, g gVar) {
        return nVar.b(new e(this, nVar, locationRequest, gVar));
    }

    public t<Status> a(n nVar, g gVar) {
        return nVar.b(new g(this, nVar, gVar));
    }
}
