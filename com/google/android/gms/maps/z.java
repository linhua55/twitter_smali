package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import jg;
import kb;
import kk;

class z implements kb {
    private final Fragment a;
    private final jg b;

    public z(Fragment fragment, jg jgVar) {
        this.b = (jg) bm.a(jgVar);
        this.a = (Fragment) bm.a(fragment);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        try {
            return (View) m.a(this.b.a(m.a((Object) layoutInflater), m.a((Object) viewGroup), bundle));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a() {
        try {
            this.b.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a(Activity activity, Bundle bundle, Bundle bundle2) {
        try {
            this.b.a(m.a((Object) activity), (GoogleMapOptions) bundle.getParcelable("MapOptions"), bundle2);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a(Bundle bundle) {
        if (bundle == null) {
            try {
                bundle = new Bundle();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
        Bundle arguments = this.a.getArguments();
        if (arguments != null && arguments.containsKey("MapOptions")) {
            kk.a(bundle, "MapOptions", arguments.getParcelable("MapOptions"));
        }
        this.b.a(bundle);
    }

    public void a(t tVar) {
        try {
            this.b.a(new aa(this, tVar));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void b() {
        try {
            this.b.c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void b(Bundle bundle) {
        try {
            this.b.b(bundle);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void c() {
        try {
            this.b.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void d() {
        try {
            this.b.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void e() {
        try {
            this.b.f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public jg f() {
        return this.b;
    }
}
