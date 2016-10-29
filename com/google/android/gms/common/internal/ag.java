package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

public final class ag implements ServiceConnection {
    final /* synthetic */ ab a;
    private final int b;

    public ag(ab abVar, int i) {
        this.a = abVar;
        this.b = i;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bm.a(iBinder, "Expecting a valid IBinder");
        synchronized (this.a.o) {
            this.a.p = ba.a(iBinder);
        }
        this.a.a(0, this.b);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.a.o) {
            this.a.p = null;
        }
        this.a.b.sendMessage(this.a.b.obtainMessage(4, this.b, 1));
    }
}
