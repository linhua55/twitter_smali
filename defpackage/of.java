package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import tv.periscope.android.library.p;

/* renamed from: of */
public abstract class of extends Binder implements oe {
    public static oe a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof oe)) ? new og(iBinder) : (oe) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        boolean z;
        boolean e;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                a();
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                b();
                parcel2.writeNoException();
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                String c = c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                float d = d();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                e = e();
                parcel2.writeNoException();
                if (e) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                e = a(of.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                if (e) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                i3 = f();
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                e = g();
                parcel2.writeNoException();
                if (e) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
