package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.WeakHashMap;

@oi
public class as implements at {
    private final Object a;
    private final WeakHashMap<ps, ah> b;
    private final ArrayList<ah> c;
    private final Context d;
    private final VersionInfoParcel e;
    private final ik f;

    public as(Context context, VersionInfoParcel versionInfoParcel, ik ikVar) {
        this.a = new Object();
        this.b = new WeakHashMap();
        this.c = new ArrayList();
        this.d = context.getApplicationContext();
        this.e = versionInfoParcel;
        this.f = ikVar;
    }

    public ah a(AdSizeParcel adSizeParcel, ps psVar) {
        return a(adSizeParcel, psVar, psVar.b.b());
    }

    public ah a(AdSizeParcel adSizeParcel, ps psVar, View view) {
        return a(adSizeParcel, psVar, new ap(view, psVar), null);
    }

    public ah a(AdSizeParcel adSizeParcel, ps psVar, View view, jh jhVar) {
        return a(adSizeParcel, psVar, new ap(view, psVar), jhVar);
    }

    public ah a(AdSizeParcel adSizeParcel, ps psVar, h hVar) {
        return a(adSizeParcel, psVar, new am(hVar), null);
    }

    public ah a(AdSizeParcel adSizeParcel, ps psVar, be beVar, jh jhVar) {
        ah ahVar;
        synchronized (this.a) {
            if (a(psVar)) {
                ahVar = (ah) this.b.get(psVar);
            } else {
                if (jhVar != null) {
                    ahVar = new au(this.d, adSizeParcel, psVar, this.e, beVar, jhVar);
                } else {
                    ahVar = new ax(this.d, adSizeParcel, psVar, this.e, beVar, this.f);
                }
                ahVar.a((at) this);
                this.b.put(psVar, ahVar);
                this.c.add(ahVar);
            }
        }
        return ahVar;
    }

    public void a(ah ahVar) {
        synchronized (this.a) {
            if (!ahVar.f()) {
                this.c.remove(ahVar);
                Iterator it = this.b.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Entry) it.next()).getValue() == ahVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public boolean a(ps psVar) {
        boolean z;
        synchronized (this.a) {
            ah ahVar = (ah) this.b.get(psVar);
            z = ahVar != null && ahVar.f();
        }
        return z;
    }

    public void b(ps psVar) {
        synchronized (this.a) {
            ah ahVar = (ah) this.b.get(psVar);
            if (ahVar != null) {
                ahVar.d();
            }
        }
    }

    public void c(ps psVar) {
        synchronized (this.a) {
            ah ahVar = (ah) this.b.get(psVar);
            if (ahVar != null) {
                ahVar.n();
            }
        }
    }

    public void d(ps psVar) {
        synchronized (this.a) {
            ah ahVar = (ah) this.b.get(psVar);
            if (ahVar != null) {
                ahVar.o();
            }
        }
    }

    public void e(ps psVar) {
        synchronized (this.a) {
            ah ahVar = (ah) this.b.get(psVar);
            if (ahVar != null) {
                ahVar.p();
            }
        }
    }
}
