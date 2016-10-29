package com.google.android.gms.gcm;

import android.app.Service;

public abstract class GcmListenerService extends Service {
    private final Object a;
    private int b;

    public GcmListenerService() {
        this.a = new Object();
        this.b = 0;
    }
}
