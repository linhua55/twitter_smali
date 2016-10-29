package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class ko extends Binder implements kn {
    public ko() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
    }

    public static kn a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof kn)) ? new kp(iBinder) : (kn) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                int a = a();
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
