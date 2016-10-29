package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import tv.periscope.android.library.p;

/* renamed from: nw */
public abstract class nw extends Binder implements nv {
    public static nv a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof nv)) ? new nx(iBinder) : (nv) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        boolean d;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                i3 = a();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                i3 = b();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                List c = c();
                parcel2.writeNoException();
                parcel2.writeBinderList(c);
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                d = d();
                parcel2.writeNoException();
                if (d) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                d = a(nw.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (d) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                i3 = e();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
