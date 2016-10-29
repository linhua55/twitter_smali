package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;
import tv.periscope.android.library.p;

/* renamed from: nk */
public abstract class nk extends Binder implements nj {
    public static nj a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof nj)) ? new nl(iBinder) : (nj) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        float d;
        boolean z;
        boolean g;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                String b = b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                a(parcel.createTypedArrayList(LatLng.CREATOR));
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                List c = c();
                parcel2.writeNoException();
                parcel2.writeTypedList(c);
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                d = d();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                i3 = e();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                b(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                d = f();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                g = g();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                g = h();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                g = a(nk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                i3 = i();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                g = j();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.IPolylineDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
