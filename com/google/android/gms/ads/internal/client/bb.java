package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class bb extends Binder implements ba {
    public static ba a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ba)) ? new bc(iBinder) : (ba) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                long a = a();
                parcel2.writeNoException();
                parcel2.writeLong(a);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
