package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import com.google.android.gms.measurement.AppMeasurementService;

class t implements Runnable {
    final /* synthetic */ p a;

    t(p pVar) {
        this.a = pVar;
    }

    public void run() {
        this.a.a.a(new ComponentName(this.a.a.m(), AppMeasurementService.class));
    }
}
