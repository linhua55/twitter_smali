package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class af extends Binder implements ae {
    public static ae a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ae)) ? new ag(iBinder) : (ae) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z = false;
        String a;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                int i3;
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean a2 = a(parcel.readInt() != 0);
                parcel2.writeNoException();
                if (a2) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                a = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                a = parcel.readString();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(a, z);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
