package defpackage;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

/* renamed from: ix */
public interface ix extends IInterface {
    j a() throws RemoteException;

    j a(float f) throws RemoteException;

    j a(float f, float f2) throws RemoteException;

    j a(float f, int i, int i2) throws RemoteException;

    j a(CameraPosition cameraPosition) throws RemoteException;

    j a(LatLng latLng) throws RemoteException;

    j a(LatLng latLng, float f) throws RemoteException;

    j a(LatLngBounds latLngBounds, int i) throws RemoteException;

    j a(LatLngBounds latLngBounds, int i, int i2, int i3) throws RemoteException;

    j b() throws RemoteException;

    j b(float f) throws RemoteException;
}
