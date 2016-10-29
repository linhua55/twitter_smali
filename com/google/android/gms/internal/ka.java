package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.List;

@oi
public class ka implements jm {
    private final AdRequestInfoParcel a;
    private final kd b;
    private final Context c;
    private final Object d;
    private final jo e;
    private final boolean f;
    private final long g;
    private final long h;
    private final cy i;
    private final boolean j;
    private boolean k;
    private jr l;

    public ka(Context context, AdRequestInfoParcel adRequestInfoParcel, kd kdVar, jo joVar, boolean z, boolean z2, long j, long j2, cy cyVar) {
        this.d = new Object();
        this.k = false;
        this.c = context;
        this.a = adRequestInfoParcel;
        this.b = kdVar;
        this.e = joVar;
        this.f = z;
        this.j = z2;
        this.g = j;
        this.h = j2;
        this.i = cyVar;
    }

    public ju a(List<jn> list) {
        b.a("Starting mediation.");
        Iterable arrayList = new ArrayList();
        cu a = this.i.a();
        for (jn jnVar : list) {
            b.c("Trying mediation network: " + jnVar.b);
            for (String str : jnVar.c) {
                cu a2 = this.i.a();
                synchronized (this.d) {
                    if (this.k) {
                        ju juVar = new ju(-1);
                        return juVar;
                    }
                    this.l = new jr(this.c, str, this.b, this.e, jnVar, this.a.c, this.a.d, this.a.k, this.f, this.j, this.a.z, this.a.n);
                    juVar = this.l.a(this.g, this.h);
                    if (juVar.a == 0) {
                        b.a("Adapter succeeded.");
                        this.i.a("mediation_network_succeed", str);
                        if (!arrayList.isEmpty()) {
                            this.i.a("mediation_networks_fail", TextUtils.join(",", arrayList));
                        }
                        this.i.a(a2, "mls");
                        this.i.a(a, "ttm");
                        return juVar;
                    }
                    arrayList.add(str);
                    this.i.a(a2, "mlf");
                    if (juVar.c != null) {
                        qw.a.post(new kb(this, juVar));
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.i.a("mediation_networks_fail", TextUtils.join(",", arrayList));
        }
        return new ju(1);
    }

    public void a() {
        synchronized (this.d) {
            this.k = true;
            if (this.l != null) {
                this.l.a();
            }
        }
    }
}
