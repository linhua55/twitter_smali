package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.g;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.formats.i;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.qw;
import java.util.List;

@oi
public class aj extends c {
    public aj(Context context, k kVar, AdSizeParcel adSizeParcel, String str, kd kdVar, VersionInfoParcel versionInfoParcel) {
        super(context, adSizeParcel, str, kdVar, versionInfoParcel, kVar);
    }

    private static d a(kq kqVar) throws RemoteException {
        return new d(kqVar.a(), kqVar.b(), kqVar.c(), kqVar.d() != null ? kqVar.d() : null, kqVar.e(), kqVar.f(), kqVar.g(), kqVar.h(), null, kqVar.l());
    }

    private static e a(kt ktVar) throws RemoteException {
        return new e(ktVar.a(), ktVar.b(), ktVar.c(), ktVar.d() != null ? ktVar.d() : null, ktVar.e(), ktVar.f(), null, ktVar.j());
    }

    private void a(d dVar) {
        qw.a.post(new al(this, dVar));
    }

    private void a(e eVar) {
        qw.a.post(new am(this, eVar));
    }

    private void a(ps psVar, String str) {
        qw.a.post(new an(this, str, psVar));
    }

    public void a(SimpleArrayMap<String, em> simpleArrayMap) {
        bm.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.f.v = simpleArrayMap;
    }

    public void a(NativeAdOptionsParcel nativeAdOptionsParcel) {
        bm.b("setNativeAdOptions must be called on the main UI thread.");
        this.f.w = nativeAdOptionsParcel;
    }

    public void a(h hVar) {
        if (this.f.j.j != null) {
            ar.h().k().a(this.f.i, this.f.j, hVar);
        }
    }

    public void a(de deVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public void a(ed edVar) {
        bm.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.f.s = edVar;
    }

    public void a(eg egVar) {
        bm.b("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.f.t = egVar;
    }

    public void a(mo moVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    public void a(pt ptVar, cy cyVar) {
        if (ptVar.d != null) {
            this.f.i = ptVar.d;
        }
        if (ptVar.e != -2) {
            qw.a.post(new ak(this, ptVar));
            return;
        }
        this.f.D = 0;
        this.f.h = ar.d().a(this.f.c, this, ptVar, this.f.d, null, this.j, this, cyVar);
        b.a("AdRenderer: " + this.f.h.getClass().getName());
    }

    public void a(List<String> list) {
        bm.b("setNativeTemplates must be called on the main UI thread.");
        this.f.z = list;
    }

    protected boolean a(AdRequestParcel adRequestParcel, ps psVar, boolean z) {
        return this.e.d();
    }

    protected boolean a(ps psVar, ps psVar2) {
        a(null);
        if (this.f.e()) {
            if (psVar2.m) {
                try {
                    kq h = psVar2.o.h();
                    kt i = psVar2.o.i();
                    if (h != null) {
                        d a = a(h);
                        a.a(new g(this.f.c, this, this.f.d, h));
                        a(a);
                    } else if (i != null) {
                        e a2 = a(i);
                        a2.a(new g(this.f.c, this, this.f.d, i));
                        a(a2);
                    } else {
                        b.d("No matching mapper for retrieved native ad template.");
                        a(0);
                        return false;
                    }
                } catch (Throwable e) {
                    b.d("Failed to get native ad mapper", e);
                }
            } else {
                i iVar = psVar2.B;
                if ((iVar instanceof e) && this.f.t != null) {
                    a((e) psVar2.B);
                } else if ((iVar instanceof d) && this.f.s != null) {
                    a((d) psVar2.B);
                } else if (!(iVar instanceof f) || this.f.v == null || this.f.v.get(((f) iVar).k()) == null) {
                    b.d("No matching listener for retrieved native ad template.");
                    a(0);
                    return false;
                } else {
                    a(psVar2, ((f) iVar).k());
                }
            }
            return super.a(psVar, psVar2);
        }
        throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }

    public void b(SimpleArrayMap<String, ej> simpleArrayMap) {
        bm.b("setOnCustomClickListener must be called on the main UI thread.");
        this.f.u = simpleArrayMap;
    }

    public ej c(String str) {
        bm.b("getOnCustomClickListener must be called on the main UI thread.");
        return (ej) this.f.u.get(str);
    }

    public void d() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    public void d_() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    public void f() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public SimpleArrayMap<String, em> z() {
        bm.b("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.f.v;
    }
}
