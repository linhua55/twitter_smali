package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.model.LatLng;
import tv.periscope.android.library.p;

/* renamed from: nz */
public abstract class nz extends Binder implements ny {
    public static ny a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ny)) ? new oa(iBinder) : (ny) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        String b;
        boolean z;
        boolean f;
        float m;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a(parcel.readInt() != 0 ? LatLng.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
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
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b = d();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b(parcel.readString());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b = e();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                f = f();
                parcel2.writeNoException();
                if (f) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                g();
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                h();
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                f = i();
                parcel2.writeNoException();
                if (f) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                f = j();
                parcel2.writeNoException();
                if (f) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                f = a(nz.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (f) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                i3 = k();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a(parcel.readFloat(), parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_navigationIcon /*20*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_navigationContentDescription /*21*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                f = l();
                parcel2.writeNoException();
                if (f) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_logoDescription /*22*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextColor /*23*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                m = m();
                parcel2.writeNoException();
                parcel2.writeFloat(m);
                return true;
            case p.Toolbar_subtitleTextColor /*24*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b(parcel.readFloat(), parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.ActionBar_popupTheme /*25*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                b(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.ActionBar_homeAsUpIndicator /*26*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                m = n();
                parcel2.writeNoException();
                parcel2.writeFloat(m);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.IMarkerDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
