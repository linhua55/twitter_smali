package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;
import tv.periscope.android.library.p;

/* renamed from: oc */
public abstract class oc extends Binder implements ob {
    public static ob a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ob)) ? new od(iBinder) : (ob) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        List c;
        float e;
        boolean z;
        boolean i4;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                String b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                a(parcel.createTypedArrayList(LatLng.CREATOR));
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                c = c();
                parcel2.writeNoException();
                parcel2.writeTypedList(c);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                b(parcel.readArrayList(getClass().getClassLoader()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                c = d();
                parcel2.writeNoException();
                parcel2.writeList(c);
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                e = e();
                parcel2.writeNoException();
                parcel2.writeFloat(e);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i3 = f();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                b(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i3 = g();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                b(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                e = h();
                parcel2.writeNoException();
                parcel2.writeFloat(e);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i4 = i();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i4 = j();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i4 = a(oc.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_navigationIcon /*20*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i3 = k();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_navigationContentDescription /*21*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_logoDescription /*22*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                i4 = l();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
