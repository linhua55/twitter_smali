package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.ke;

public abstract class av extends Binder implements au {
    public static au a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof au)) ? new aw(iBinder) : (au) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AdSizeParcel adSizeParcel = null;
        j a;
        IBinder a2;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                a = k.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    adSizeParcel = AdSizeParcel.CREATOR.a(parcel);
                }
                a2 = a(a, adSizeParcel, parcel.readString(), ke.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(a2);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                a = k.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    adSizeParcel = AdSizeParcel.CREATOR.a(parcel);
                }
                a2 = a(a, adSizeParcel, parcel.readString(), ke.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(a2);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
