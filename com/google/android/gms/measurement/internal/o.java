package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

class o implements Runnable {
    final /* synthetic */ i a;

    o(i iVar) {
        this.a = iVar;
    }

    public void run() {
        ax c = this.a.b;
        if (c == null) {
            this.a.s().b().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            c.a(this.a.i().a(this.a.s().A()));
            this.a.x();
        } catch (RemoteException e) {
            this.a.s().b().a("Failed to send app launch to AppMeasurementService", e);
        }
    }
}
