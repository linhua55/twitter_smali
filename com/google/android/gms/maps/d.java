package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import ki;

class d extends ki {
    final /* synthetic */ n a;
    final /* synthetic */ c b;

    d(c cVar, n nVar) {
        this.b = cVar;
        this.a = nVar;
    }

    public void a(Bitmap bitmap) throws RemoteException {
        this.a.a(bitmap);
    }

    public void a(j jVar) throws RemoteException {
        this.a.a((Bitmap) m.a(jVar));
    }
}
