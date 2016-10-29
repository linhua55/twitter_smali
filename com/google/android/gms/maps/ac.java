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
import js;
import kc;
import kk;

class ac implements kc {
    private final Fragment a;
    private final js b;

    public ac(Fragment fragment, js jsVar) {
        this.b = (js) bm.a(jsVar);
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
            this.b.a(m.a((Object) activity), null, bundle2);
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
        if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
            kk.a(bundle, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
        }
        this.b.a(bundle);
    }

    public void a(u uVar) {
        try {
            this.b.a(new ad(this, uVar));
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
}
