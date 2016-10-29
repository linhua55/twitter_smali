package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.ad;

class ha extends ad {
    final /* synthetic */ gn a;

    ha(gn gnVar) {
        this.a = gnVar;
    }

    public void a() throws RemoteException {
        gn.a(this.a).add(new hb(this));
    }
}
