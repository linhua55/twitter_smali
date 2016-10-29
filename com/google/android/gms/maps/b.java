package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import ix;

public final class b {
    private static ix a;

    public static a a(LatLng latLng, float f) {
        try {
            return new a(a().a(latLng, f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static a a(LatLngBounds latLngBounds, int i) {
        try {
            return new a(a().a(latLngBounds, i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static a a(LatLngBounds latLngBounds, int i, int i2, int i3) {
        try {
            return new a(a().a(latLngBounds, i, i2, i3));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    private static ix a() {
        return (ix) bm.a(a, "CameraUpdateFactory is not initialized");
    }

    public static void a(ix ixVar) {
        a = (ix) bm.a(ixVar);
    }
}
