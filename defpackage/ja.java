package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;

/* renamed from: ja */
public interface ja extends IInterface {
    CameraPosition a() throws RemoteException;

    nj a(PolylineOptions polylineOptions) throws RemoteException;

    np a(CircleOptions circleOptions) throws RemoteException;

    ns a(GroundOverlayOptions groundOverlayOptions) throws RemoteException;

    ny a(MarkerOptions markerOptions) throws RemoteException;

    ob a(PolygonOptions polygonOptions) throws RemoteException;

    oe a(TileOverlayOptions tileOverlayOptions) throws RemoteException;

    void a(int i) throws RemoteException;

    void a(int i, int i2, int i3, int i4) throws RemoteException;

    void a(Bundle bundle) throws RemoteException;

    void a(j jVar) throws RemoteException;

    void a(j jVar, int i, km kmVar) throws RemoteException;

    void a(j jVar, km kmVar) throws RemoteException;

    void a(String str) throws RemoteException;

    void a(jd jdVar) throws RemoteException;

    void a(kh khVar, j jVar) throws RemoteException;

    void a(ks ksVar) throws RemoteException;

    void a(kv kvVar) throws RemoteException;

    void a(ky kyVar) throws RemoteException;

    void a(lb lbVar) throws RemoteException;

    void a(le leVar) throws RemoteException;

    void a(lh lhVar) throws RemoteException;

    void a(lk lkVar) throws RemoteException;

    void a(lq lqVar) throws RemoteException;

    void a(lt ltVar) throws RemoteException;

    void a(lw lwVar) throws RemoteException;

    void a(lz lzVar) throws RemoteException;

    void a(mc mcVar) throws RemoteException;

    void a(mf mfVar) throws RemoteException;

    void a(mi miVar) throws RemoteException;

    void a(ml mlVar) throws RemoteException;

    void a(mo moVar) throws RemoteException;

    void a(mr mrVar) throws RemoteException;

    void a(mu muVar) throws RemoteException;

    void a(boolean z) throws RemoteException;

    float b() throws RemoteException;

    void b(Bundle bundle) throws RemoteException;

    void b(j jVar) throws RemoteException;

    boolean b(boolean z) throws RemoteException;

    float c() throws RemoteException;

    void c(Bundle bundle) throws RemoteException;

    void c(boolean z) throws RemoteException;

    void d() throws RemoteException;

    void d(boolean z) throws RemoteException;

    void e() throws RemoteException;

    int f() throws RemoteException;

    boolean g() throws RemoteException;

    boolean h() throws RemoteException;

    boolean i() throws RemoteException;

    Location j() throws RemoteException;

    jy k() throws RemoteException;

    jm l() throws RemoteException;

    boolean m() throws RemoteException;

    nv n() throws RemoteException;

    void o() throws RemoteException;

    void p() throws RemoteException;

    void q() throws RemoteException;

    void r() throws RemoteException;

    boolean s() throws RemoteException;

    void t() throws RemoteException;
}
