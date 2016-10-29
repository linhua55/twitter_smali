package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;

class b extends Thread {
    final /* synthetic */ GcmTaskService a;
    private final String b;
    private final l c;
    private final Bundle d;

    b(GcmTaskService gcmTaskService, String str, IBinder iBinder, Bundle bundle) {
        this.a = gcmTaskService;
        this.b = str;
        this.c = m.a(iBinder);
        this.d = bundle;
    }

    public void run() {
        Process.setThreadPriority(10);
        try {
            this.c.a(this.a.a(new k(this.b, this.d)));
        } catch (RemoteException e) {
            Log.e("GcmTaskService", "Error reporting result of operation to scheduler for " + this.b);
        } finally {
            this.a.a(this.b);
        }
    }
}
