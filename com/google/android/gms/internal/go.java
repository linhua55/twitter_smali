package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.ag;

class go extends ag {
    final /* synthetic */ gn a;

    go(gn gnVar) {
        this.a = gnVar;
    }

    public void a() throws RemoteException {
        gn.a(this.a).add(new gp(this));
    }

    public void a(int i) throws RemoteException {
        gn.a(this.a).add(new gq(this, i));
        qd.e("Pooled interstitial failed to load.");
    }

    public void b() throws RemoteException {
        gn.a(this.a).add(new gr(this));
    }

    public void c() throws RemoteException {
        gn.a(this.a).add(new gs(this));
        qd.e("Pooled interstitial loaded.");
    }

    public void d() throws RemoteException {
        gn.a(this.a).add(new gt(this));
    }
}
