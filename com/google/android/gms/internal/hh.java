package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.reward.client.a;

class hh implements hl {
    final /* synthetic */ a a;
    final /* synthetic */ hc b;

    hh(hc hcVar, a aVar) {
        this.b = hcVar;
        this.a = aVar;
    }

    public void a(hm hmVar) throws RemoteException {
        if (hmVar.f != null) {
            hmVar.f.a(this.a);
        }
    }
}
