package defpackage;

import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* renamed from: jb */
public abstract class jb extends Binder implements ja {
    public static ja a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ja)) ? new jc(iBinder) : (ja) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        IBinder iBinder = null;
        float b;
        boolean g;
        boolean z;
        switch (i) {
            case p.View_android_focusable /*1*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                CameraPosition a = a();
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.View_paddingStart /*2*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                b = b();
                parcel2.writeNoException();
                parcel2.writeFloat(b);
                return true;
            case p.View_paddingEnd /*3*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                b = c();
                parcel2.writeNoException();
                parcel2.writeFloat(b);
                return true;
            case p.View_theme /*4*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetStart /*5*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                b(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetEnd /*6*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(k.a(parcel.readStrongBinder()), kn.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetLeft /*7*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(k.a(parcel.readStrongBinder()), parcel.readInt(), kn.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.Toolbar_contentInsetRight /*8*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                d();
                parcel2.writeNoException();
                return true;
            case p.Toolbar_popupTheme /*9*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                nj a2 = a(parcel.readInt() != 0 ? PolylineOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a2 != null) {
                    iBinder = a2.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_titleTextAppearance /*10*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                ob a3 = a(parcel.readInt() != 0 ? PolygonOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a3 != null) {
                    iBinder = a3.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                ny a4 = a(parcel.readInt() != 0 ? MarkerOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a4 != null) {
                    iBinder = a4.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_titleMargins /*12*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                ns a5 = a(parcel.readInt() != 0 ? GroundOverlayOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a5 != null) {
                    iBinder = a5.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_titleMarginStart /*13*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                oe a6 = a(parcel.readInt() != 0 ? TileOverlayOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a6 != null) {
                    iBinder = a6.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.Toolbar_titleMarginEnd /*14*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                e();
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleMarginTop /*15*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                int f = f();
                parcel2.writeNoException();
                parcel2.writeInt(f);
                return true;
            case p.Toolbar_titleMarginBottom /*16*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case p.Toolbar_maxButtonHeight /*17*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = g();
                parcel2.writeNoException();
                parcel2.writeInt(g ? 1 : 0);
                return true;
            case p.Toolbar_collapseIcon /*18*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_collapseContentDescription /*19*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = h();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_navigationIcon /*20*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = b(parcel.readInt() != 0);
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_navigationContentDescription /*21*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = i();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case p.Toolbar_logoDescription /*22*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                c(z);
                parcel2.writeNoException();
                return true;
            case p.Toolbar_titleTextColor /*23*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                Location j = j();
                parcel2.writeNoException();
                if (j != null) {
                    parcel2.writeInt(1);
                    j.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case p.Toolbar_subtitleTextColor /*24*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(je.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case p.ActionBar_popupTheme /*25*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                jy k = k();
                parcel2.writeNoException();
                if (k != null) {
                    iBinder = k.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case p.ActionBar_homeAsUpIndicator /*26*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                jm l = l();
                parcel2.writeNoException();
                if (l != null) {
                    iBinder = l.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case ApiRunnable.ACTION_CODE_PING_WATCHING /*27*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(kw.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_END_WATCHING /*28*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(lr.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_SET_SETTINGS /*29*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(lx.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_GET_SETTINGS /*30*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(md.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_END_BROADCAST /*31*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(mg.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(lf.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_GET_BROADCAST_SHARE_URL /*33*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(kt.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_BLOCK /*35*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                np a7 = a(parcel.readInt() != 0 ? CircleOptions.CREATOR.a(parcel) : null);
                parcel2.writeNoException();
                if (a7 != null) {
                    iBinder = a7.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case ApiRunnable.ACTION_CODE_UNBLOCK /*36*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(mm.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_GET_BLOCKED /*37*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(mj.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_SHARE_BROADCAST /*38*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(ki.a(parcel.readStrongBinder()), k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_GET_BROADCAST_ID_FROM_URL /*39*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_UPLOAD_TEST /*40*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = m();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case ApiRunnable.ACTION_CODE_REPORT_BROADCAST /*41*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                d(z);
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_dialogTheme /*42*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(lu.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_USER_BROADCASTS /*44*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                nv n = n();
                parcel2.writeNoException();
                if (n != null) {
                    iBinder = n.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(lc.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_PLAYBACK_META /*53*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(ma.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_BROADCAST_META /*54*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_MUTE /*55*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                o();
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                p();
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_SUPPORTED_LANGUAGES /*57*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                q();
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_ADJUST_BROADCAST_RANK /*58*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                r();
                parcel2.writeNoException();
                return true;
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                g = s();
                parcel2.writeNoException();
                if (g) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                b(bundle);
                parcel2.writeNoException();
                if (bundle != null) {
                    parcel2.writeInt(1);
                    bundle.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_panelMenuListTheme /*80*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(mp.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                c(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorPrimary /*82*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                t();
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorPrimaryDark /*83*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(kz.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorAccent /*84*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(ll.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorControlNormal /*85*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(ms.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorControlActivated /*86*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(li.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case cse.AppCompatTheme_colorControlHighlight /*87*/:
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                a(mv.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
