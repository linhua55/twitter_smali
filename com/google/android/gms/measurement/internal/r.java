package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

class r implements Runnable {
    final /* synthetic */ ComponentName a;
    final /* synthetic */ p b;

    r(p pVar, ComponentName componentName) {
        this.b = pVar;
        this.a = componentName;
    }

    public void run() {
        this.b.a.a(this.a);
    }
}
