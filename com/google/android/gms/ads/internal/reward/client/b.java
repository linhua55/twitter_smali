package com.google.android.gms.ads.internal.reward.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class b extends Binder implements a {
    public b() {
        attachInterface(this, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    public static a a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new c(iBinder) : (a) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                String a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                int b = b();
                parcel2.writeNoException();
                parcel2.writeInt(b);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
