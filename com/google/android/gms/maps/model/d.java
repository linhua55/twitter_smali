package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.bm;
import np;

public final class d {
    private final np a;

    public d(np npVar) {
        this.a = (np) bm.a(npVar);
    }

    public void a() {
        try {
            this.a.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a(double d) {
        try {
            this.a.a(d);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        try {
            return this.a.a(((d) obj).a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.a.j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
