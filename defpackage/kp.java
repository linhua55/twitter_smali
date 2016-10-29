package defpackage;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

/* renamed from: kp */
public interface kp extends IInterface {
    ix a() throws RemoteException;

    jj a(j jVar, GoogleMapOptions googleMapOptions) throws RemoteException;

    jv a(j jVar, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException;

    void a(j jVar) throws RemoteException;

    void a(j jVar, int i) throws RemoteException;

    jg b(j jVar) throws RemoteException;

    nm b() throws RemoteException;

    js c(j jVar) throws RemoteException;
}
