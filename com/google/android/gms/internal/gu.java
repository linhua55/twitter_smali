package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.ay;

class gu extends ay {
    final /* synthetic */ gn a;

    gu(gn gnVar) {
        this.a = gnVar;
    }

    public void a(String str, String str2) throws RemoteException {
        gn.a(this.a).add(new gv(this, str, str2));
    }
}
