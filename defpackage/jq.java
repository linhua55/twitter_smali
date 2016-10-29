package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import tv.periscope.android.library.p;

/* renamed from: jq */
public abstract class jq extends Binder implements jp {
    public static jp a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof jp)) ? new jr(iBinder) : (jp) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IBinder iBinder = null;
        int i3 = 0;
        boolean z;
        boolean a;
        LatLng a2;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                d(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a = a();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a = b();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a = c();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a = d();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(parcel.readInt() != 0 ? StreetViewPanoramaCamera.CREATOR.a(parcel) : null, parcel.readLong());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                StreetViewPanoramaCamera e = e();
                parcel2.writeNoException();
                if (e != null) {
                    parcel2.writeInt(1);
                    e.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    a2 = LatLng.CREATOR.a(parcel);
                }
                a(a2);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                if (parcel.readInt() != 0) {
                    a2 = LatLng.CREATOR.a(parcel);
                }
                a(a2, parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                StreetViewPanoramaLocation f = f();
                parcel2.writeNoException();
                if (f != null) {
                    parcel2.writeInt(1);
                    f.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(nb.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(my.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(ne.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                StreetViewPanoramaOrientation a3 = a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (a3 != null) {
                    parcel2.writeInt(1);
                    a3.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                j a4 = a(parcel.readInt() != 0 ? StreetViewPanoramaOrientation.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a4 != null) {
                    iBinder = a4.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_navigationIcon /*20*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                a(nh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
