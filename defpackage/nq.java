package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import tv.periscope.android.library.p;

/* renamed from: nq */
public abstract class nq extends Binder implements np {
    public static np a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof np)) ? new nr(iBinder) : (np) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        float e;
        boolean i4;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                String b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                a(parcel.readInt() != 0 ? LatLng.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                LatLng c = c();
                parcel2.writeNoException();
                if (c != null) {
                    parcel2.writeInt(1);
                    c.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                a(parcel.readDouble());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                double d = d();
                parcel2.writeNoException();
                parcel2.writeDouble(d);
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                e = e();
                parcel2.writeNoException();
                parcel2.writeFloat(e);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                i3 = f();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                b(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                i3 = g();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                b(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                e = h();
                parcel2.writeNoException();
                parcel2.writeFloat(e);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                boolean z;
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                i4 = i();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                i4 = a(nq.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
                i3 = j();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.ICircleDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
