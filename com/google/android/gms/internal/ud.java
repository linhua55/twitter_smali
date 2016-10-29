package com.google.android.gms.internal;

import android.util.Log;

class ud implements Runnable {
    final /* synthetic */ uc a;

    ud(uc ucVar) {
        this.a = ucVar;
    }

    public void run() {
        synchronized (this.a.f) {
            if (this.a.g <= this.a.d.b() && this.a.j != null) {
                Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
                this.a.j.c();
                this.a.j = null;
            }
        }
    }
}
