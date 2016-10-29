package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.Window;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.ft;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.sz;

@oi
public class w extends e implements ft, ga {
    protected transient boolean l;
    private boolean m;
    private float n;
    private String o;

    public w(Context context, AdSizeParcel adSizeParcel, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        super(context, adSizeParcel, str, kdVar, versionInfoParcel, kVar);
        this.l = false;
        this.o = "background" + hashCode() + "." + "png";
    }

    private void a(Bundle bundle) {
        ar.e().b(this.f.c, this.f.e.b, "gmob-apps", bundle, false);
    }

    protected boolean C() {
        if (!(this.f.c instanceof Activity)) {
            return false;
        }
        Window window = ((Activity) this.f.c).getWindow();
        if (window == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        boolean z = (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
        return z;
    }

    public void D() {
        new x(this, this.o).g();
        if (this.f.e()) {
            this.f.b();
            this.f.j = null;
            this.f.F = false;
            this.l = false;
        }
    }

    public void E() {
        if (!(this.f.j == null || this.f.j.w == null)) {
            ar.e().a(this.f.c, this.f.e.b, this.f.j.w);
        }
        r();
    }

    protected sz a(pt ptVar, l lVar) {
        sz a = ar.f().a(this.f.c, this.f.i, false, false, this.f.d, this.f.e, this.a, this.i);
        a.l().a(this, null, this, this, ((Boolean) cj.V.c()).booleanValue(), this, this, lVar, null);
        a((jh) a);
        a.b(ptVar.a.w);
        fz.a(a, this);
        return a;
    }

    public void a(boolean z, float f) {
        this.m = z;
        this.n = f;
    }

    public boolean a(AdRequestParcel adRequestParcel, cy cyVar) {
        if (this.f.j == null) {
            return super.a(adRequestParcel, cyVar);
        }
        b.d("An interstitial is already loading. Aborting.");
        return false;
    }

    protected boolean a(AdRequestParcel adRequestParcel, ps psVar, boolean z) {
        if (this.f.e() && psVar.b != null) {
            ar.g().a(psVar.b);
        }
        return this.e.d();
    }

    public boolean a(ps psVar, ps psVar2) {
        if (!super.a(psVar, psVar2)) {
            return false;
        }
        if (!(this.f.e() || this.f.C == null || psVar2.j == null)) {
            this.h.a(this.f.i, psVar2, this.f.C);
        }
        return true;
    }

    public void b(RewardItemParcel rewardItemParcel) {
        if (this.f.j != null) {
            if (this.f.j.x != null) {
                ar.e().a(this.f.c, this.f.e.b, this.f.j.x);
            }
            if (this.f.j.v != null) {
                rewardItemParcel = this.f.j.v;
            }
        }
        a(rewardItemParcel);
    }

    public void b(boolean z) {
        this.f.F = z;
    }

    public void f() {
        bm.b("showInterstitial must be called on the main UI thread.");
        if (this.f.j == null) {
            b.d("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) cj.an.c()).booleanValue()) {
            Bundle bundle;
            String packageName = this.f.c.getApplicationContext() != null ? this.f.c.getApplicationContext().getPackageName() : this.f.c.getPackageName();
            if (!this.l) {
                b.d("It is not recommended to show an interstitial before onAdLoaded completes.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                a(bundle);
            }
            if (!ar.e().g(this.f.c)) {
                b.d("It is not recommended to show an interstitial when app is not in foreground.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_app_not_in_foreground");
                a(bundle);
            }
        }
        if (!this.f.f()) {
            if (this.f.j.m) {
                try {
                    this.f.j.o.b();
                } catch (Throwable e) {
                    b.d("Could not show interstitial.", e);
                    D();
                }
            } else if (this.f.j.b == null) {
                b.d("The interstitial failed to load.");
            } else if (this.f.j.b.p()) {
                b.d("The interstitial is already showing.");
            } else {
                this.f.j.b.a(true);
                if (this.f.j.j != null) {
                    this.h.a(this.f.i, this.f.j);
                }
                Bitmap h = this.f.F ? ar.e().h(this.f.c) : null;
                if (!((Boolean) cj.aE.c()).booleanValue() || h == null) {
                    InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(this.f.F, C(), null, false, 0.0f);
                    int q = this.f.j.b.q();
                    if (q == -1) {
                        q = this.f.j.g;
                    }
                    ar.c().a(this.f.c, new AdOverlayInfoParcel(this, this, this, this.f.j.b, q, this.f.e, this.f.j.A, interstitialAdParameterParcel));
                    return;
                }
                new y(this, h, this.o).g();
            }
        }
    }

    public void f_() {
        y();
        super.f_();
    }

    protected void n() {
        D();
        super.n();
    }

    protected void q() {
        super.q();
        this.l = true;
    }
}
