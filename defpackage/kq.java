package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import tv.periscope.android.library.p;

/* renamed from: kq */
public abstract class kq extends Binder implements kp {
    public static kp a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof kp)) ? new kr(iBinder) : (kp) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IBinder iBinder = null;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                jg b = b(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (b != null) {
                    iBinder = b.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                jj a = a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleMapOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a != null) {
                    iBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                ix a2 = a();
                parcel2.writeNoException();
                if (a2 != null) {
                    iBinder = a2.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                nm b2 = b();
                parcel2.writeNoException();
                if (b2 != null) {
                    iBinder = b2.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                a(k.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                jv a3 = a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? StreetViewPanoramaOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a3 != null) {
                    iBinder = a3.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                js c = c(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (c != null) {
                    iBinder = c.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.ICreator");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
