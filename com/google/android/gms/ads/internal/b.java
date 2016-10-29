package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ThinAdSizeParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.as;
import com.google.android.gms.ads.internal.client.ax;
import com.google.android.gms.ads.internal.client.ba;
import com.google.android.gms.ads.internal.client.t;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.request.d;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bi;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.eu;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.py;
import com.google.android.gms.internal.pz;
import java.util.HashSet;

@oi
public abstract class b extends as implements a, w, d, eu, np, py {
    protected cy a;
    protected cu b;
    protected cu c;
    protected boolean d;
    protected final ao e;
    protected final zzs f;
    protected transient AdRequestParcel g;
    protected final com.google.android.gms.internal.as h;
    protected final k i;

    b(zzs com_google_android_gms_ads_internal_zzs, ao aoVar, k kVar) {
        this.d = false;
        this.f = com_google_android_gms_ads_internal_zzs;
        if (aoVar == null) {
            aoVar = new ao(this);
        }
        this.e = aoVar;
        this.i = kVar;
        ar.e().b(this.f.c);
        ar.h().a(this.f.c, this.f.e);
        this.h = ar.h().k();
    }

    private AdRequestParcel d(AdRequestParcel adRequestParcel) {
        return (!n.zzap(this.f.c) || adRequestParcel.k == null) ? adRequestParcel : new t(adRequestParcel).a(null).a();
    }

    Bundle a(bi biVar) {
        Bundle bundle = null;
        if (biVar != null) {
            String b;
            String c;
            if (biVar.f()) {
                biVar.d();
            }
            bf c2 = biVar.c();
            if (c2 != null) {
                b = c2.b();
                c = c2.c();
                com.google.android.gms.ads.internal.util.client.b.a("In AdManager: loadAd, " + c2.toString());
                if (b != null) {
                    ar.h().a(b);
                }
            } else {
                b = ar.h().i();
                c = null;
            }
            if (b != null) {
                bundle = new Bundle(1);
                bundle.putString("fingerprint", b);
                if (!b.equals(c)) {
                    bundle.putString("v_fp", c);
                }
            }
        }
        return bundle;
    }

    public j a() {
        bm.b("getAdFrame must be called on the main UI thread.");
        return m.a(this.f.f);
    }

    protected void a(int i) {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to load ad: " + i);
        this.d = false;
        if (this.f.n != null) {
            try {
                this.f.n.a(i);
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
        if (this.f.y != null) {
            try {
                this.f.y.a(i);
            } catch (Throwable e2) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", e2);
            }
        }
    }

    protected void a(View view) {
        this.f.f.addView(view, ar.g().d());
    }

    public void a(AdSizeParcel adSizeParcel) {
        bm.b("setAdSize must be called on the main UI thread.");
        this.f.i = adSizeParcel;
        if (!(this.f.j == null || this.f.j.b == null || this.f.D != 0)) {
            this.f.j.b.a(adSizeParcel);
        }
        if (this.f.f != null) {
            if (this.f.f.getChildCount() > 1) {
                this.f.f.removeView(this.f.f.getNextView());
            }
            this.f.f.setMinimumWidth(adSizeParcel.g);
            this.f.f.setMinimumHeight(adSizeParcel.d);
            this.f.f.requestLayout();
        }
    }

    public void a(ac acVar) {
        bm.b("setAdListener must be called on the main UI thread.");
        this.f.m = acVar;
    }

    public void a(af afVar) {
        bm.b("setAdListener must be called on the main UI thread.");
        this.f.n = afVar;
    }

    public void a(ax axVar) {
        bm.b("setAppEventListener must be called on the main UI thread.");
        this.f.o = axVar;
    }

    public void a(ba baVar) {
        bm.b("setCorrelationIdProvider must be called on the main UI thread");
        this.f.p = baVar;
    }

    public void a(g gVar) {
        bm.b("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f.y = gVar;
    }

    protected void a(RewardItemParcel rewardItemParcel) {
        if (this.f.y != null) {
            try {
                String str = BuildConfig.VERSION_NAME;
                int i = 0;
                if (rewardItemParcel != null) {
                    str = rewardItemParcel.b;
                    i = rewardItemParcel.c;
                }
                this.f.y.a(new pm(str, i));
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onRewarded().", e);
            }
        }
    }

    public void a(de deVar) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    public void a(mo moVar) {
        throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
    }

    public void a(na naVar, String str) {
        throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
    }

    public void a(pt ptVar) {
        if (!(ptVar.b.n == -1 || TextUtils.isEmpty(ptVar.b.z))) {
            long b = b(ptVar.b.z);
            if (b != -1) {
                cu a = this.a.a(b + ptVar.b.n);
                this.a.a(a, "stc");
            }
        }
        this.a.a(ptVar.b.z);
        this.a.a(this.b, "arf");
        this.c = this.a.a();
        this.a.a("gqi", ptVar.b.A);
        this.f.g = null;
        this.f.k = ptVar;
        a(ptVar, this.a);
    }

    protected abstract void a(pt ptVar, cy cyVar);

    public void a(String str) {
        bm.b("setUserId must be called on the main UI thread.");
        this.f.a(str);
    }

    public void a(String str, String str2) {
        if (this.f.o != null) {
            try {
                this.f.o.a(str, str2);
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call the AppEventListener.", e);
            }
        }
    }

    public void a(HashSet<pu> hashSet) {
        this.f.a((HashSet) hashSet);
    }

    public void a(boolean z) {
        throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    public boolean a(AdRequestParcel adRequestParcel) {
        bm.b("loadAd must be called on the main UI thread.");
        AdRequestParcel d = d(adRequestParcel);
        if (this.f.g == null && this.f.h == null) {
            com.google.android.gms.ads.internal.util.client.b.c("Starting ad request.");
            m();
            this.b = this.a.a();
            if (!d.f) {
                com.google.android.gms.ads.internal.util.client.b.c("Use AdRequest.Builder.addTestDevice(\"" + aa.a().a(this.f.c) + "\") to get test ads on this device.");
            }
            this.d = a(d, this.a);
            return this.d;
        }
        if (this.g != null) {
            com.google.android.gms.ads.internal.util.client.b.d("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
        } else {
            com.google.android.gms.ads.internal.util.client.b.d("Loading already in progress, saving this object for future refreshes.");
        }
        this.g = d;
        return false;
    }

    protected abstract boolean a(AdRequestParcel adRequestParcel, cy cyVar);

    boolean a(ps psVar) {
        return false;
    }

    protected abstract boolean a(ps psVar, ps psVar2);

    long b(@NonNull String str) {
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException e) {
            com.google.android.gms.ads.internal.util.client.b.d("Invalid index for Url fetch time in CSI latency info.");
            return -1;
        } catch (NumberFormatException e2) {
            com.google.android.gms.ads.internal.util.client.b.d("Cannot find valid format of Url fetch time in CSI latency info.");
            return -1;
        }
    }

    public void b() {
        bm.b("destroy must be called on the main UI thread.");
        this.e.a();
        this.h.c(this.f.j);
        this.f.j();
    }

    public void b(ps psVar) {
        this.a.a(this.c, "awr");
        this.f.h = null;
        if (!(psVar.d == -2 || psVar.d == 3)) {
            ar.h().a(this.f.a());
        }
        if (psVar.d == -1) {
            this.d = false;
            return;
        }
        if (a(psVar)) {
            com.google.android.gms.ads.internal.util.client.b.a("Ad refresh scheduled.");
        }
        if (psVar.d != -2) {
            a(psVar.d);
            return;
        }
        if (this.f.B == null) {
            this.f.B = new pz(this.f.b);
        }
        this.h.b(this.f.j);
        if (a(this.f.j, psVar)) {
            this.f.j = psVar;
            this.f.i();
            this.a.a("is_mraid", this.f.j.a() ? "1" : "0");
            this.a.a("is_mediation", this.f.j.m ? "1" : "0");
            if (!(this.f.j.b == null || this.f.j.b.l() == null)) {
                this.a.a("is_video", this.f.j.b.l().c() ? "1" : "0");
            }
            this.a.a(this.b, "ttc");
            if (ar.h().e() != null) {
                ar.h().e().a(this.a);
            }
            if (this.f.e()) {
                q();
            }
        }
    }

    protected boolean b(AdRequestParcel adRequestParcel) {
        ViewParent parent = this.f.f.getParent();
        return (parent instanceof View) && ((View) parent).isShown() && ar.e().a();
    }

    public void c(AdRequestParcel adRequestParcel) {
        if (b(adRequestParcel)) {
            a(adRequestParcel);
            return;
        }
        com.google.android.gms.ads.internal.util.client.b.c("Ad is not visible. Not refreshing ad.");
        this.e.a(adRequestParcel);
    }

    protected void c(ps psVar) {
        if (psVar == null) {
            com.google.android.gms.ads.internal.util.client.b.d("Ad state was null when trying to ping impression URLs.");
            return;
        }
        com.google.android.gms.ads.internal.util.client.b.a("Pinging Impression URLs.");
        this.f.l.a();
        if (psVar.e != null && !psVar.C) {
            ar.e().a(this.f.c, this.f.e.b, psVar.e);
            psVar.C = true;
        }
    }

    public boolean c() {
        bm.b("isLoaded must be called on the main UI thread.");
        return this.f.g == null && this.f.h == null && this.f.j != null;
    }

    public void d() {
        bm.b("pause must be called on the main UI thread.");
    }

    public void d_() {
        bm.b("resume must be called on the main UI thread.");
    }

    public void e() {
        if (this.f.j == null) {
            com.google.android.gms.ads.internal.util.client.b.d("Ad state was null when trying to ping click URLs.");
            return;
        }
        com.google.android.gms.ads.internal.util.client.b.a("Pinging click URLs.");
        this.f.l.b();
        if (this.f.j.c != null) {
            ar.e().a(this.f.c, this.f.e.b, this.f.j.c);
        }
        if (this.f.m != null) {
            try {
                this.f.m.a();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not notify onAdClicked event.", e);
            }
        }
    }

    public void g() {
        bm.b("stopLoading must be called on the main UI thread.");
        this.d = false;
        this.f.a(true);
    }

    public void h() {
        bm.b("recordManualImpression must be called on the main UI thread.");
        if (this.f.j == null) {
            com.google.android.gms.ads.internal.util.client.b.d("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        com.google.android.gms.ads.internal.util.client.b.a("Pinging manual tracking URLs.");
        if (this.f.j.f != null && !this.f.j.D) {
            ar.e().a(this.f.c, this.f.e.b, this.f.j.f);
            this.f.j.D = true;
        }
    }

    public AdSizeParcel i() {
        bm.b("getAdSize must be called on the main UI thread.");
        return this.f.i == null ? null : new ThinAdSizeParcel(this.f.i);
    }

    public boolean k() {
        return this.d;
    }

    public void l() {
        o();
    }

    void m() {
        this.a = new cy(((Boolean) cj.G.c()).booleanValue(), "load_ad", this.f.i.b);
        this.b = new cu(-1, null, null);
        this.c = new cu(-1, null, null);
    }

    protected void n() {
        com.google.android.gms.ads.internal.util.client.b.c("Ad closing.");
        if (this.f.n != null) {
            try {
                this.f.n.a();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call AdListener.onAdClosed().", e);
            }
        }
        if (this.f.y != null) {
            try {
                this.f.y.d();
            } catch (Throwable e2) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", e2);
            }
        }
    }

    protected void o() {
        com.google.android.gms.ads.internal.util.client.b.c("Ad leaving application.");
        if (this.f.n != null) {
            try {
                this.f.n.b();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call AdListener.onAdLeftApplication().", e);
            }
        }
        if (this.f.y != null) {
            try {
                this.f.y.e();
            } catch (Throwable e2) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", e2);
            }
        }
    }

    protected void p() {
        com.google.android.gms.ads.internal.util.client.b.c("Ad opening.");
        if (this.f.n != null) {
            try {
                this.f.n.d();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call AdListener.onAdOpened().", e);
            }
        }
        if (this.f.y != null) {
            try {
                this.f.y.b();
            } catch (Throwable e2) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", e2);
            }
        }
    }

    protected void q() {
        com.google.android.gms.ads.internal.util.client.b.c("Ad finished loading.");
        this.d = false;
        if (this.f.n != null) {
            try {
                this.f.n.c();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call AdListener.onAdLoaded().", e);
            }
        }
        if (this.f.y != null) {
            try {
                this.f.y.a();
            } catch (Throwable e2) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", e2);
            }
        }
    }

    protected void r() {
        if (this.f.y != null) {
            try {
                this.f.y.c();
            } catch (Throwable e) {
                com.google.android.gms.ads.internal.util.client.b.d("Could not call RewardedVideoAdListener.onVideoStarted().", e);
            }
        }
    }
}
