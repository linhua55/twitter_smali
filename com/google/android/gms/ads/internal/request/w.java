package com.google.android.gms.ads.internal.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class w implements u {
    private IBinder a;

    w(IBinder iBinder) {
        this.a = iBinder;
    }

    public AdResponseParcel a(AdRequestInfoParcel adRequestInfoParcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (adRequestInfoParcel != null) {
                obtain.writeInt(1);
                adRequestInfoParcel.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            AdResponseParcel a = obtain2.readInt() != 0 ? AdResponseParcel.CREATOR.a(obtain2) : null;
            obtain2.recycle();
            obtain.recycle();
            return a;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public void a(AdRequestInfoParcel adRequestInfoParcel, x xVar) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (adRequestInfoParcel != null) {
                obtain.writeInt(1);
                adRequestInfoParcel.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeStrongBinder(xVar != null ? xVar.asBinder() : null);
            this.a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
