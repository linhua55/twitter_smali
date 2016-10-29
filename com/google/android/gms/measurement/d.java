package com.google.android.gms.measurement;

class d implements Runnable {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public void run() {
        if (!this.a.d.stopSelfResult(this.a.b)) {
            return;
        }
        if (this.a.a.d().N()) {
            this.a.c.z().a("Device AppMeasurementService processed last upload request");
        } else {
            this.a.c.z().a("Local AppMeasurementService processed last upload request");
        }
    }
}
