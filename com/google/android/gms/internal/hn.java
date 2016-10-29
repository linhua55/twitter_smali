package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.ag;

class hn extends ag {
    af a;
    final /* synthetic */ hm b;

    hn(hm hmVar, af afVar) {
        this.b = hmVar;
        this.a = afVar;
    }

    public void a() throws RemoteException {
        this.a.a();
        ar.p().a();
    }

    public void a(int i) throws RemoteException {
        this.a.a(i);
    }

    public void b() throws RemoteException {
        this.a.b();
    }

    public void c() throws RemoteException {
        this.a.c();
    }

    public void d() throws RemoteException {
        this.a.d();
    }
}
