package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import nj;

public final class h {
    private final nj a;

    public h(nj njVar) {
        this.a = (nj) bm.a(njVar);
    }

    public void a() {
        try {
            this.a.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        try {
            return this.a.a(((h) obj).a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.a.i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
