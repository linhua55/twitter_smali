package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.overlay.q;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.e;
import com.google.android.gms.ads.internal.purchase.g;
import com.google.android.gms.ads.internal.purchase.h;
import com.google.android.gms.ads.internal.purchase.m;
import com.google.android.gms.ads.internal.purchase.n;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.request.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.mh;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.qw;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@oi
public abstract class c extends b implements q, m, fr, jp {
    protected final kd j;
    protected transient boolean k;
    private final Messenger l;

    public c(Context context, AdSizeParcel adSizeParcel, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        this(new zzs(context, adSizeParcel, str, versionInfoParcel), kdVar, null, kVar);
    }

    c(zzs com_google_android_gms_ads_internal_zzs, kd kdVar, ao aoVar, k kVar) {
        super(com_google_android_gms_ads_internal_zzs, aoVar, kVar);
        this.j = kdVar;
        this.l = new Messenger(new mh(this.f.c));
        this.k = false;
    }

    private a a(AdRequestParcel adRequestParcel, Bundle bundle) {
        PackageInfo packageInfo;
        int i;
        ApplicationInfo applicationInfo = this.f.c.getApplicationInfo();
        try {
            packageInfo = this.f.c.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.f.c.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (!(this.f.f == null || this.f.f.getParent() == null)) {
            int[] iArr = new int[2];
            this.f.f.getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int width = this.f.f.getWidth();
            int height = this.f.f.getHeight();
            i = 0;
            if (this.f.f.isShown() && i2 + width > 0 && i3 + height > 0 && i2 <= displayMetrics.widthPixels && i3 <= displayMetrics.heightPixels) {
                i = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i2);
            bundle2.putInt("y", i3);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i);
        }
        String c = ar.h().c();
        this.f.l = new pu(c, this.f.b);
        this.f.l.a(adRequestParcel);
        String a = ar.e().a(this.f.c, this.f.f, this.f.i);
        long j = 0;
        if (this.f.p != null) {
            try {
                j = this.f.p.a();
            } catch (RemoteException e2) {
                b.d("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle a2 = ar.h().a(this.f.c, this, c);
        List arrayList = new ArrayList();
        for (i = 0; i < this.f.v.size(); i++) {
            arrayList.add(this.f.v.keyAt(i));
        }
        boolean z = this.f.q != null;
        boolean z2 = this.f.r != null && ar.h().m();
        return new a(bundle2, adRequestParcel, this.f.i, this.f.b, applicationInfo, packageInfo, c, ar.h().a(), this.f.e, a2, this.f.z, arrayList, bundle, ar.h().g(), this.l, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, a, j, uuid, cj.a(), this.f.a, this.f.w, new CapabilityParcel(z, z2, this.i.c.a()), this.f.h(), ar.e().f(), ar.e().j(this.f.c), ar.e().b(this.f.f));
    }

    public void a(mo moVar) {
        bm.b("setInAppPurchaseListener must be called on the main UI thread.");
        this.f.q = moVar;
    }

    public void a(na naVar, String str) {
        bm.b("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.f.A = new n(str);
        this.f.r = naVar;
        if (!ar.h().f() && naVar != null) {
            new com.google.android.gms.ads.internal.purchase.c(this.f.c, this.f.r, this.f.A).g();
        }
    }

    protected void a(ps psVar, boolean z) {
        if (psVar == null) {
            b.d("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.c(psVar);
        if (!(psVar.q == null || psVar.q.d == null)) {
            ar.r().a(this.f.c, this.f.e.b, psVar, this.f.b, z, psVar.q.d);
        }
        if (psVar.n != null && psVar.n.g != null) {
            ar.r().a(this.f.c, this.f.e.b, psVar, this.f.b, z, psVar.n.g);
        }
    }

    public void a(String str, ArrayList<String> arrayList) {
        e eVar = new e(str, arrayList, this.f.c, this.f.e.b);
        if (this.f.q == null) {
            b.d("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (!aa.a().b(this.f.c)) {
                b.d("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            } else if (this.f.r == null) {
                b.d("PlayStorePurchaseListener is not set.");
                return;
            } else if (this.f.A == null) {
                b.d("PlayStorePurchaseVerifier is not initialized.");
                return;
            } else if (this.f.E) {
                b.d("An in-app purchase request is already in progress, abort");
                return;
            } else {
                this.f.E = true;
                try {
                    if (this.f.r.a(str)) {
                        ar.o().a(this.f.c, this.f.e.e, new GInAppPurchaseManagerInfoParcel(this.f.c, this.f.A, eVar, this));
                        return;
                    } else {
                        this.f.E = false;
                        return;
                    }
                } catch (RemoteException e) {
                    b.d("Could not start In-App purchase.");
                    this.f.E = false;
                    return;
                }
            }
        }
        try {
            this.f.q.a(eVar);
        } catch (RemoteException e2) {
            b.d("Could not start In-App purchase.");
        }
    }

    public void a(String str, boolean z, int i, Intent intent, g gVar) {
        try {
            if (this.f.r != null) {
                this.f.r.a(new h(this.f.c, str, z, i, intent, gVar));
            }
        } catch (RemoteException e) {
            b.d("Fail to invoke PlayStorePurchaseListener.");
        }
        qw.a.postDelayed(new d(this, intent), 500);
    }

    public boolean a(AdRequestParcel adRequestParcel, cy cyVar) {
        if (!s()) {
            return false;
        }
        Bundle a = a(ar.h().a(this.f.c));
        this.e.a();
        this.f.D = 0;
        a a2 = a(adRequestParcel, a);
        cyVar.a("seq_num", a2.g);
        cyVar.a("request_id", a2.v);
        cyVar.a("session_id", a2.h);
        if (a2.f != null) {
            cyVar.a("app_version", String.valueOf(a2.f.versionCode));
        }
        this.f.g = ar.a().a(this.f.c, a2, this.f.d, this);
        return true;
    }

    protected boolean a(AdRequestParcel adRequestParcel, ps psVar, boolean z) {
        if (!z && this.f.e()) {
            if (psVar.h > 0) {
                this.e.a(adRequestParcel, psVar.h);
            } else if (psVar.q != null && psVar.q.g > 0) {
                this.e.a(adRequestParcel, psVar.q.g);
            } else if (!psVar.m && psVar.d == 2) {
                this.e.a(adRequestParcel);
            }
        }
        return this.e.d();
    }

    boolean a(ps psVar) {
        AdRequestParcel adRequestParcel;
        boolean z = false;
        if (this.g != null) {
            adRequestParcel = this.g;
            this.g = null;
        } else {
            adRequestParcel = psVar.a;
            if (adRequestParcel.c != null) {
                z = adRequestParcel.c.getBoolean("_noRefresh", false);
            }
        }
        return a(adRequestParcel, psVar, z);
    }

    protected boolean a(ps psVar, ps psVar2) {
        int i;
        int i2 = 0;
        if (!(psVar == null || psVar.r == null)) {
            psVar.r.a(null);
        }
        if (psVar2.r != null) {
            psVar2.r.a((jp) this);
        }
        if (psVar2.q != null) {
            i = psVar2.q.l;
            i2 = psVar2.q.m;
        } else {
            i = 0;
        }
        this.f.B.a(i, i2);
        return true;
    }

    public void b(ps psVar) {
        super.b(psVar);
        if (psVar.d == 3 && psVar.q != null && psVar.q.e != null) {
            b.a("Pinging no fill URLs.");
            ar.r().a(this.f.c, this.f.e.b, psVar, this.f.b, false, psVar.q.e);
        }
    }

    protected boolean b(AdRequestParcel adRequestParcel) {
        return super.b(adRequestParcel) && !this.k;
    }

    public void d() {
        bm.b("pause must be called on the main UI thread.");
        if (!(this.f.j == null || this.f.j.b == null || !this.f.e())) {
            ar.g().a(this.f.j.b);
        }
        if (!(this.f.j == null || this.f.j.o == null)) {
            try {
                this.f.j.o.d();
            } catch (RemoteException e) {
                b.d("Could not pause mediation adapter.");
            }
        }
        this.h.d(this.f.j);
        this.e.b();
    }

    public void d_() {
        bm.b("resume must be called on the main UI thread.");
        if (!(this.f.j == null || this.f.j.b == null || !this.f.e())) {
            ar.g().b(this.f.j.b);
        }
        if (!(this.f.j == null || this.f.j.o == null)) {
            try {
                this.f.j.o.e();
            } catch (RemoteException e) {
                b.d("Could not resume mediation adapter.");
            }
        }
        this.e.c();
        this.h.e(this.f.j);
    }

    public void e() {
        if (this.f.j == null) {
            b.d("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (!(this.f.j.q == null || this.f.j.q.c == null)) {
            ar.r().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.q.c);
        }
        if (!(this.f.j.n == null || this.f.j.n.f == null)) {
            ar.r().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.n.f);
        }
        super.e();
    }

    public void e_() {
        this.h.b(this.f.j);
        this.k = false;
        n();
        this.f.l.c();
    }

    public void f() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    public void f_() {
        this.k = true;
        p();
    }

    public void g_() {
        this.h.d(this.f.j);
    }

    public void h_() {
        this.h.e(this.f.j);
    }

    public String j() {
        return this.f.j == null ? null : this.f.j.p;
    }

    protected boolean s() {
        return ar.e().a(this.f.c.getPackageManager(), this.f.c.getPackageName(), "android.permission.INTERNET") && ar.e().a(this.f.c);
    }

    public void t() {
        e();
    }

    public void u() {
        e_();
    }

    public void v() {
        l();
    }

    public void w() {
        f_();
    }

    public void x() {
        if (this.f.j != null) {
            b.d("Mediation adapter " + this.f.j.p + " refreshed, but mediation adapters should never refresh.");
        }
        a(this.f.j, true);
        q();
    }

    public void y() {
        a(this.f.j, false);
    }
}
