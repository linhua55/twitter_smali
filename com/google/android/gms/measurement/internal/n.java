package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

class n implements Runnable {
    final /* synthetic */ UserAttributeParcel a;
    final /* synthetic */ i b;

    n(i iVar, UserAttributeParcel userAttributeParcel) {
        this.b = iVar;
        this.a = userAttributeParcel;
    }

    public void run() {
        ax c = this.a.b;
        if (c == null) {
            this.b.s().b().a("Discarding data. Failed to set user attribute");
            return;
        }
        try {
            c.a(this.a, this.b.i().a(this.b.s().A()));
            this.b.x();
        } catch (RemoteException e) {
            this.b.s().b().a("Failed to send attribute to AppMeasurementService", e);
        }
    }
}
