package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.internal.kd;

class aw implements au {
    private IBinder a;

    aw(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder a(j jVar, AdSizeParcel adSizeParcel, String str, kd kdVar, int i) throws RemoteException {
        IBinder iBinder = null;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            if (adSizeParcel != null) {
                obtain.writeInt(1);
                adSizeParcel.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
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

    public IBinder a(j jVar, AdSizeParcel adSizeParcel, String str, kd kdVar, int i, int i2) throws RemoteException {
        IBinder iBinder = null;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            if (adSizeParcel != null) {
                obtain.writeInt(1);
                adSizeParcel.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeString(str);
            if (kdVar != null) {
                iBinder = kdVar.asBinder();
            }
            obtain.writeStrongBinder(iBinder);
            obtain.writeInt(i);
            obtain.writeInt(i2);
            this.a.transact(2, obtain, obtain2, 0);
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
