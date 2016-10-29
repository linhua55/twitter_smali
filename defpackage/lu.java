package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import tv.periscope.android.library.p;

/* renamed from: lu */
public abstract class lu extends Binder implements lt {
    public lu() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }

    public static lt a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof lt)) ? new lv(iBinder) : (lt) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
                a();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
