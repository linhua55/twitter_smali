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
import kl;

class ae extends b<ac> {
    protected n<ac> a;
    private final Fragment b;
    private Activity c;
    private final List<u> d;

    ae(Fragment fragment) {
        this.d = new ArrayList();
        this.b = fragment;
    }

    private void a(Activity activity) {
        this.c = activity;
        g();
    }

    protected void a(n<ac> nVar) {
        this.a = nVar;
        g();
    }

    public void g() {
        if (this.c != null && this.a != null && a() == null) {
            try {
                s.a(this.c);
                this.a.a(new ac(this.b, kl.a(this.c).c(m.a(this.c))));
                for (u a : this.d) {
                    ((ac) a()).a(a);
                }
                this.d.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }
}
