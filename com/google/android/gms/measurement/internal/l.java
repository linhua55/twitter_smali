package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

class l implements Runnable {
    final /* synthetic */ i a;

    l(i iVar) {
        this.a = iVar;
    }

    public void run() {
        ax c = this.a.b;
        if (c == null) {
            this.a.s().b().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            c.b(this.a.i().a(this.a.s().A()));
            this.a.x();
        } catch (RemoteException e) {
            this.a.s().b().a("Failed to send measurementEnabled to AppMeasurementService", e);
        }
    }
}
