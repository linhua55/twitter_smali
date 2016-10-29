package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.aj;
import com.google.android.gms.ads.internal.client.ba;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qw;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@oi
public class t extends aj {
    private final Context a;
    private final af b;
    private final kd c;
    private final ed d;
    private final eg e;
    private final SimpleArrayMap<String, em> f;
    private final SimpleArrayMap<String, ej> g;
    private final NativeAdOptionsParcel h;
    private final List<String> i;
    private final ba j;
    private final String k;
    private final VersionInfoParcel l;
    private WeakReference<aj> m;
    private final k n;
    private final Object o;

    t(Context context, String str, kd kdVar, VersionInfoParcel versionInfoParcel, af afVar, ed edVar, eg egVar, SimpleArrayMap<String, em> simpleArrayMap, SimpleArrayMap<String, ej> simpleArrayMap2, NativeAdOptionsParcel nativeAdOptionsParcel, ba baVar, k kVar) {
        this.o = new Object();
        this.a = context;
        this.k = str;
        this.c = kdVar;
        this.l = versionInfoParcel;
        this.b = afVar;
        this.e = egVar;
        this.d = edVar;
        this.f = simpleArrayMap;
        this.g = simpleArrayMap2;
        this.h = nativeAdOptionsParcel;
        this.i = d();
        this.j = baVar;
        this.n = kVar;
    }

    private List<String> d() {
        List<String> arrayList = new ArrayList();
        if (this.e != null) {
            arrayList.add("1");
        }
        if (this.d != null) {
            arrayList.add("2");
        }
        if (this.f.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    public void a(AdRequestParcel adRequestParcel) {
        a(new u(this, adRequestParcel));
    }

    protected void a(Runnable runnable) {
        qw.a.post(runnable);
    }

    public boolean a() {
        synchronized (this.o) {
            if (this.m != null) {
                aj ajVar = (aj) this.m.get();
                boolean k = ajVar != null ? ajVar.k() : false;
                return k;
            }
            return false;
        }
    }

    public String b() {
        synchronized (this.o) {
            if (this.m != null) {
                aj ajVar = (aj) this.m.get();
                String j = ajVar != null ? ajVar.j() : null;
                return j;
            }
            return null;
        }
    }

    protected aj c() {
        return new aj(this.a, this.n, AdSizeParcel.a(this.a), this.k, this.c, this.l);
    }
}
