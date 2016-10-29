package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import jv;
import kc;

class w implements kc {
    private final ViewGroup a;
    private final jv b;
    private View c;

    public w(ViewGroup viewGroup, jv jvVar) {
        this.b = (jv) bm.a(jvVar);
        this.a = (ViewGroup) bm.a(viewGroup);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
    }

    public void a() {
        try {
            this.b.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a(Activity activity, Bundle bundle, Bundle bundle2) {
        throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
    }

    public void a(Bundle bundle) {
        try {
            this.b.a(bundle);
            this.c = (View) m.a(this.b.f());
            this.a.removeAllViews();
            this.a.addView(this.c);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void a(u uVar) {
        try {
            this.b.a(new x(this, uVar));
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
        throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
    }

    public void d() {
        try {
            this.b.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void e() {
        try {
            this.b.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public jv f() {
        return this.b;
    }
}
