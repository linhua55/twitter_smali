package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.k;

class bh implements bf {
    private IBinder a;

    bh(IBinder iBinder) {
        this.a = iBinder;
    }

    public j a(j jVar, int i, int i2) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            obtain.writeInt(i);
            obtain.writeInt(i2);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            j a = k.a(obtain2.readStrongBinder());
            return a;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public j a(j jVar, SignInButtonConfig signInButtonConfig) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
            if (signInButtonConfig != null) {
                obtain.writeInt(1);
                signInButtonConfig.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            j a = k.a(obtain2.readStrongBinder());
            return a;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
