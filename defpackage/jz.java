package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import tv.periscope.android.library.p;

/* renamed from: jz */
public abstract class jz extends Binder implements jy {
    public static jy a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof jy)) ? new ka(iBinder) : (jy) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        boolean z;
        boolean a;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                b(z);
                parcel2.writeNoException();
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                d(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                e(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                f(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                g(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                h(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = a();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = b();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = c();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = d();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = e();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = f();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = g();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                i(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = h();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                j(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                a = i();
                parcel2.writeNoException();
                if (a) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
