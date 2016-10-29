package com.google.android.gms.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class p extends Binder implements o {
    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof o)) ? new q(iBinder) : (o) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        LocationAvailability locationAvailability = null;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                LocationResult locationResult;
                parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                if (parcel.readInt() != 0) {
                    locationResult = (LocationResult) LocationResult.CREATOR.createFromParcel(parcel);
                }
                a(locationResult);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                if (parcel.readInt() != 0) {
                    locationAvailability = LocationAvailability.CREATOR.a(parcel);
                }
                a(locationAvailability);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.location.ILocationCallback");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
