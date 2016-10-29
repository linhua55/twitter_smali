package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import tv.periscope.android.library.p;

/* renamed from: kt */
public abstract class kt extends Binder implements ks {
    public static ks a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ks)) ? new ku(iBinder) : (ks) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IBinder iBinder = null;
        j a;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                a = a(nz.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (a != null) {
                    iBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                a = b(nz.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (a != null) {
                    iBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
