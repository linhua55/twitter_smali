package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import tv.periscope.android.library.p;

/* renamed from: md */
public abstract class md extends Binder implements mc {
    public static mc a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof mc)) ? new me(iBinder) : (mc) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
                boolean a = a(nz.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(a ? 1 : 0);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerClickListener");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
