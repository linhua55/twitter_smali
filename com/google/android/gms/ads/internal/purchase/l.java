package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.internal.pw;

class l implements ServiceConnection {
    final /* synthetic */ Context a;
    final /* synthetic */ k b;

    l(k kVar, Context context) {
        this.b = kVar;
        this.a = context;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean z = false;
        b bVar = new b(this.a.getApplicationContext(), false);
        bVar.a(iBinder);
        int a = bVar.a(3, this.a.getPackageName(), "inapp");
        pw h = ar.h();
        if (a == 0) {
            z = true;
        }
        h.b(z);
        this.a.unbindService(this);
        bVar.a();
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }
}
