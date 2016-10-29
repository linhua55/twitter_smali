package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;

class dr implements dp {
    private IBinder a;

    dr(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder a(j jVar, j jVar2, j jVar3, int i) throws RemoteException {
        IBinder iBinder = null;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            obtain.writeStrongBinder(jVar2 != null ? jVar2.asBinder() : null);
            if (jVar3 != null) {
                iBinder = jVar3.asBinder();
            }
            obtain.writeStrongBinder(iBinder);
            obtain.writeInt(i);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            iBinder = obtain2.readStrongBinder();
            return iBinder;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
