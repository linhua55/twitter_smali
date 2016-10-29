package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class mm extends Binder implements ml {
    public mm() {
        attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
    }

    public static ml a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ml)) ? new mn(iBinder) : (ml) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                String a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                b(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                c(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
