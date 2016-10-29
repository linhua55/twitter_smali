package defpackage;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

/* renamed from: jm */
public interface jm extends IInterface {
    j a(LatLng latLng) throws RemoteException;

    LatLng a(j jVar) throws RemoteException;

    VisibleRegion a() throws RemoteException;
}
