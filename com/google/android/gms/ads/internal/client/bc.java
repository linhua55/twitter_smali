package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class bc implements ba {
    private IBinder a;

    bc(IBinder iBinder) {
        this.a = iBinder;
    }

    public long a() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            long readLong = obtain2.readLong();
            return readLong;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
