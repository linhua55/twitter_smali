package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.n;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
import jj;
import kl;

class r extends b<p> {
    protected n<p> a;
    private final ViewGroup b;
    private final Context c;
    private final GoogleMapOptions d;
    private final List<t> e;

    r(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
        this.e = new ArrayList();
        this.b = viewGroup;
        this.c = context;
        this.d = googleMapOptions;
    }

    protected void a(n<p> nVar) {
        this.a = nVar;
        g();
    }

    public void a(t tVar) {
        if (a() != null) {
            ((p) a()).a(tVar);
        } else {
            this.e.add(tVar);
        }
    }

    public void g() {
        if (this.a != null && a() == null) {
            try {
                s.a(this.c);
                jj a = kl.a(this.c).a(m.a(this.c), this.d);
                if (a != null) {
                    this.a.a(new p(this.b, a));
                    for (t a2 : this.e) {
                        ((p) a()).a(a2);
                    }
                    this.e.clear();
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }
}
