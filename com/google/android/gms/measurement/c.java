package com.google.android.gms.measurement;

import com.google.android.gms.measurement.internal.bc;
import com.google.android.gms.measurement.internal.bx;

class c implements Runnable {
    final /* synthetic */ bx a;
    final /* synthetic */ int b;
    final /* synthetic */ bc c;
    final /* synthetic */ AppMeasurementService d;

    c(AppMeasurementService appMeasurementService, bx bxVar, int i, bc bcVar) {
        this.d = appMeasurementService;
        this.a = bxVar;
        this.b = i;
        this.c = bcVar;
    }

    public void run() {
        this.a.B();
        this.d.a.post(new d(this));
    }
}
