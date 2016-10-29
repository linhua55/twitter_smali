package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.reward.client.a;
import com.google.android.gms.ads.internal.reward.client.h;

class hc extends h {
    final /* synthetic */ gn a;

    hc(gn gnVar) {
        this.a = gnVar;
    }

    public void a() throws RemoteException {
        gn.a(this.a).add(new hd(this));
    }

    public void a(int i) throws RemoteException {
        gn.a(this.a).add(new hj(this, i));
    }

    public void a(a aVar) throws RemoteException {
        gn.a(this.a).add(new hh(this, aVar));
    }

    public void b() throws RemoteException {
        gn.a(this.a).add(new he(this));
    }

    public void c() throws RemoteException {
        gn.a(this.a).add(new hf(this));
    }

    public void d() throws RemoteException {
        gn.a(this.a).add(new hg(this));
    }

    public void e() throws RemoteException {
        gn.a(this.a).add(new hi(this));
    }
}
