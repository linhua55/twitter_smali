package com.google.android.gms.ads.internal.request;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class v extends Binder implements u {
    public v() {
        attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    public static u a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof u)) ? new w(iBinder) : (u) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AdRequestInfoParcel adRequestInfoParcel = null;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                if (parcel.readInt() != 0) {
                    adRequestInfoParcel = AdRequestInfoParcel.CREATOR.a(parcel);
                }
                AdResponseParcel a = a(adRequestInfoParcel);
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                if (parcel.readInt() != 0) {
                    adRequestInfoParcel = AdRequestInfoParcel.CREATOR.a(parcel);
                }
                a(adRequestInfoParcel, y.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
