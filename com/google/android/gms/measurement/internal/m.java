package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

class m implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ EventParcel b;
    final /* synthetic */ i c;

    m(i iVar, String str, EventParcel eventParcel) {
        this.c = iVar;
        this.a = str;
        this.b = eventParcel;
    }

    public void run() {
        ax c = this.c.b;
        if (c == null) {
            this.c.s().b().a("Discarding data. Failed to send event to service");
            return;
        }
        try {
            if (TextUtils.isEmpty(this.a)) {
                c.a(this.b, this.c.i().a(this.c.s().A()));
            } else {
                c.a(this.b, this.a, this.c.s().A());
            }
            this.c.x();
        } catch (RemoteException e) {
            this.c.s().b().a("Failed to send event to AppMeasurementService", e);
        }
    }
}
