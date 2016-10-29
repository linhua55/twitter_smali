package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class aj extends Binder implements ai {
    public aj() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    public static ai a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ai)) ? new ak(iBinder) : (ai) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoader");
                a(parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoader");
                String b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoader");
                boolean a = a();
                parcel2.writeNoException();
                parcel2.writeInt(a ? 1 : 0);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.client.IAdLoader");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
