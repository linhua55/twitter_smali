package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.internal.kd;

class aq implements ao {
    private IBinder a;

    aq(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder a(j jVar, String str, kd kdVar, int i) throws RemoteException {
        IBinder iBinder = null;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            obtain.writeString(str);
            if (kdVar != null) {
                iBinder = kdVar.asBinder();
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
