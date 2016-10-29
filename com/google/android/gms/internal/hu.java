package com.google.android.gms.internal;

import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.w;
import java.util.Iterator;

class hu {
    w a;
    MutableContextWrapper b;
    gn c;
    long d;
    boolean e;
    boolean f;
    final /* synthetic */ ht g;

    hu(ht htVar, gm gmVar) {
        this.g = htVar;
        gm a = gmVar.a();
        this.b = gmVar.b();
        this.a = a.a(ht.a(htVar));
        this.c = new gn();
        this.c.a(this.a);
    }

    private void a() {
        if (!this.e && ht.c(this.g) != null) {
            this.f = this.a.a(ht.c(this.g));
            this.e = true;
            this.d = ar.i().a();
        }
    }

    void a(AdRequestParcel adRequestParcel) {
        if (adRequestParcel != null) {
            ht.a(this.g, adRequestParcel);
        }
        a();
        Iterator it = ht.b(this.g).iterator();
        while (it.hasNext()) {
            ((hu) it.next()).a();
        }
    }

    void a(gm gmVar) {
        this.b.setBaseContext(gmVar.b().getBaseContext());
    }
}
