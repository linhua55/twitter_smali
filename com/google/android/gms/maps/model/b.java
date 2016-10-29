package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import nm;

public final class b {
    private static nm a;

    public static a a(float f) {
        try {
            return new a(a().a(f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static a a(int i) {
        try {
            return new a(a().a(i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    private static nm a() {
        return (nm) bm.a(a, "IBitmapDescriptorFactory is not initialized");
    }

    public static void a(nm nmVar) {
        if (a == null) {
            a = (nm) bm.a(nmVar);
        }
    }
}
