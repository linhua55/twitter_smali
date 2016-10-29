package com.google.android.gms.location.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;

class w implements u {
    private IBinder a;

    w(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(LocationSettingsResult locationSettingsResult) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.location.internal.ISettingsCallbacks");
            if (locationSettingsResult != null) {
                obtain.writeInt(1);
                locationSettingsResult.writeToParcel(obtain, 0);
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
