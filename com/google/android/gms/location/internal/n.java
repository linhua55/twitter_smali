package com.google.android.gms.location.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class n implements l {
    private IBinder a;

    n(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(FusedLocationProviderResult fusedLocationProviderResult) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            if (fusedLocationProviderResult != null) {
                obtain.writeInt(1);
                fusedLocationProviderResult.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
