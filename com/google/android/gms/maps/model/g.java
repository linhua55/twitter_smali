package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import ob;

public final class g {
    private final ob a;

    public g(ob obVar) {
        this.a = (ob) bm.a(obVar);
    }

    public void a() {
        try {
            this.a.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        try {
            return this.a.a(((g) obj).a);
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
