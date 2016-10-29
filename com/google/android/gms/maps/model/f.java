package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import ny;

public final class f {
    private final ny a;

    public f(ny nyVar) {
        this.a = (ny) bm.a(nyVar);
    }

    public void a() {
        try {
            this.a.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        try {
            return this.a.a(((f) obj).a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.a.k();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
