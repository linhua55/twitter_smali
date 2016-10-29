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
import kl;

class y extends b<w> {
    protected n<w> a;
    private final ViewGroup b;
    private final Context c;
    private final StreetViewPanoramaOptions d;
    private final List<u> e;

    y(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        this.e = new ArrayList();
        this.b = viewGroup;
        this.c = context;
        this.d = streetViewPanoramaOptions;
    }

    protected void a(n<w> nVar) {
        this.a = nVar;
        g();
    }

    public void g() {
        if (this.a != null && a() == null) {
            try {
                this.a.a(new w(this.b, kl.a(this.c).a(m.a(this.c), this.d)));
                for (u a : this.e) {
                    ((w) a()).a(a);
                }
                this.e.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }
}
