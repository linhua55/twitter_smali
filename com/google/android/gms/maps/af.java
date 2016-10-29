package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import jy;

public final class af {
    private final jy a;

    af(jy jyVar) {
        this.a = jyVar;
    }

    public void a(boolean z) {
        try {
            this.a.a(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void b(boolean z) {
        try {
            this.a.b(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void c(boolean z) {
        try {
            this.a.c(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void d(boolean z) {
        try {
            this.a.g(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
