package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.as;
import com.google.android.gms.ads.internal.client.ax;
import com.google.android.gms.ads.internal.client.ba;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.internal.w;
import com.google.android.gms.dynamic.j;

@oi
public class hv extends as {
    private String a;
    private gm b;
    private w c;
    private hm d;
    private na e;
    private String f;

    public hv(Context context, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        this(str, new gm(context.getApplicationContext(), kdVar, versionInfoParcel, kVar));
    }

    public hv(String str, gm gmVar) {
        this.a = str;
        this.b = gmVar;
        this.d = new hm();
        ar.p().a(gmVar);
    }

    private void m() {
        if (this.c != null && this.e != null) {
            this.c.a(this.e, this.f);
        }
    }

    public j a() throws RemoteException {
        return this.c != null ? this.c.a() : null;
    }

    public void a(AdSizeParcel adSizeParcel) throws RemoteException {
        if (this.c != null) {
            this.c.a(adSizeParcel);
        }
    }

    public void a(ac acVar) throws RemoteException {
        this.d.e = acVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(af afVar) throws RemoteException {
        this.d.a = afVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(ax axVar) throws RemoteException {
        this.d.b = axVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(ba baVar) throws RemoteException {
        l();
        if (this.c != null) {
            this.c.a(baVar);
        }
    }

    public void a(g gVar) {
        this.d.f = gVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(de deVar) throws RemoteException {
        this.d.d = deVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(mo moVar) throws RemoteException {
        this.d.c = moVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(na naVar, String str) throws RemoteException {
        this.e = naVar;
        this.f = str;
        m();
    }

    public void a(String str) {
    }

    public void a(boolean z) throws RemoteException {
        l();
        if (this.c != null) {
            this.c.a(z);
        }
    }

    public boolean a(AdRequestParcel adRequestParcel) throws RemoteException {
        if (b(adRequestParcel)) {
            l();
        }
        if (adRequestParcel.j != null) {
            l();
        }
        if (this.c != null) {
            return this.c.a(adRequestParcel);
        }
        hu a = ar.p().a(adRequestParcel, this.a);
        if (a != null) {
            if (!a.e) {
                a.a(adRequestParcel);
            }
            this.c = a.a;
            a.a(this.b);
            a.c.a(this.d);
            this.d.a(this.c);
            m();
            return a.f;
        }
        this.c = this.b.a(this.a);
        this.d.a(this.c);
        m();
        return this.c.a(adRequestParcel);
    }

    public void b() throws RemoteException {
        if (this.c != null) {
            this.c.b();
        }
    }

    boolean b(AdRequestParcel adRequestParcel) {
        Bundle bundle = adRequestParcel.m;
        if (bundle == null) {
            return false;
        }
        bundle = bundle.getBundle(AdMobAdapter.class.getCanonicalName());
        if (bundle == null) {
            return false;
        }
        return bundle.keySet().contains("gw");
    }

    public boolean c() throws RemoteException {
        return this.c != null && this.c.c();
    }

    public void d() throws RemoteException {
        if (this.c != null) {
            this.c.d();
        }
    }

    public void d_() throws RemoteException {
        if (this.c != null) {
            this.c.d_();
        }
    }

    public void f() throws RemoteException {
        if (this.c != null) {
            this.c.f();
        } else {
            b.d("Interstitial ad must be loaded before showInterstitial().");
        }
    }

    public void g() throws RemoteException {
        if (this.c != null) {
            this.c.g();
        }
    }

    public void h() throws RemoteException {
        if (this.c != null) {
            this.c.h();
        } else {
            b.d("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    public AdSizeParcel i() throws RemoteException {
        return this.c != null ? this.c.i() : null;
    }

    public String j() throws RemoteException {
        return this.c != null ? this.c.j() : null;
    }

    public boolean k() throws RemoteException {
        return this.c != null && this.c.k();
    }

    void l() {
        if (this.c == null) {
            this.c = this.b.a(this.a);
            this.d.a(this.c);
            m();
        }
    }
}
