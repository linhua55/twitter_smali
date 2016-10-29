package defpackage;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

/* renamed from: jp */
public interface jp extends IInterface {
    j a(StreetViewPanoramaOrientation streetViewPanoramaOrientation) throws RemoteException;

    StreetViewPanoramaOrientation a(j jVar) throws RemoteException;

    void a(LatLng latLng) throws RemoteException;

    void a(LatLng latLng, int i) throws RemoteException;

    void a(StreetViewPanoramaCamera streetViewPanoramaCamera, long j) throws RemoteException;

    void a(String str) throws RemoteException;

    void a(mx mxVar) throws RemoteException;

    void a(na naVar) throws RemoteException;

    void a(nd ndVar) throws RemoteException;

    void a(ng ngVar) throws RemoteException;

    void a(boolean z) throws RemoteException;

    boolean a() throws RemoteException;

    void b(boolean z) throws RemoteException;

    boolean b() throws RemoteException;

    void c(boolean z) throws RemoteException;

    boolean c() throws RemoteException;

    void d(boolean z) throws RemoteException;

    boolean d() throws RemoteException;

    StreetViewPanoramaCamera e() throws RemoteException;

    StreetViewPanoramaLocation f() throws RemoteException;
}
