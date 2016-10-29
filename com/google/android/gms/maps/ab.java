package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.n;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
import jg;
import kl;

class ab extends b<z> {
    protected n<z> a;
    private final Fragment b;
    private Activity c;
    private final List<t> d;

    ab(Fragment fragment) {
        this.d = new ArrayList();
        this.b = fragment;
    }

    private void a(Activity activity) {
        this.c = activity;
        g();
    }

    protected void a(n<z> nVar) {
        this.a = nVar;
        g();
    }

    public void g() {
        if (this.c != null && this.a != null && a() == null) {
            try {
                s.a(this.c);
                jg b = kl.a(this.c).b(m.a(this.c));
                if (b != null) {
                    this.a.a(new z(this.b, b));
                    for (t a : this.d) {
                        ((z) a()).a(a);
                    }
                    this.d.clear();
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }
}
