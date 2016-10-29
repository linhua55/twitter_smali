package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.LogEventParcelable;

class ur implements up {
    private IBinder a;

    ur(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(um umVar, LogEventParcelable logEventParcelable) throws RemoteException {
        IBinder iBinder = null;
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
            if (umVar != null) {
                iBinder = umVar.asBinder();
            }
            obtain.writeStrongBinder(iBinder);
            if (logEventParcelable != null) {
                obtain.writeInt(1);
                logEventParcelable.writeToParcel(obtain, 0);
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
