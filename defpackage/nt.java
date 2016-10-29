package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import tv.periscope.android.library.p;

/* renamed from: nt */
public abstract class nt extends Binder implements ns {
    public static ns a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ns)) ? new nu(iBinder) : (ns) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        LatLngBounds latLngBounds = null;
        int i3 = 0;
        LatLng a;
        float d;
        boolean i4;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                String b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (parcel.readInt() != 0) {
                    a = LatLng.CREATOR.a(parcel);
                }
                a(a);
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a = c();
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a(parcel.readFloat(), parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d = d();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d = e();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (parcel.readInt() != 0) {
                    latLngBounds = LatLngBounds.CREATOR.a(parcel);
                }
                a(latLngBounds);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                latLngBounds = f();
                parcel2.writeNoException();
                if (latLngBounds != null) {
                    parcel2.writeInt(1);
                    latLngBounds.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                b(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d = g();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                c(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d = h();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                i4 = i();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                d = j();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                i4 = a(nt.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_navigationIcon /*20*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                int k = k();
                parcel2.writeNoException();
                parcel2.writeInt(k);
                return true;
            case p.Toolbar_navigationContentDescription /*21*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_logoDescription /*22*/:
                boolean z;
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextColor /*23*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                i4 = l();
                parcel2.writeNoException();
                if (i4) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
