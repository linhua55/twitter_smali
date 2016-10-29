package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.su;
import com.google.android.gms.internal.sz;
import java.util.List;

@oi
public class o extends e implements OnGlobalLayoutListener, OnScrollChangedListener {
    private boolean l;

    public o(Context context, AdSizeParcel adSizeParcel, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        super(context, adSizeParcel, str, kdVar, versionInfoParcel, kVar);
    }

    private AdSizeParcel b(pt ptVar) {
        if (ptVar.b.B) {
            return this.f.i;
        }
        g gVar;
        String str = ptVar.b.m;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            gVar = new g(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            gVar = this.f.i.b();
        }
        return new AdSizeParcel(this.f.c, gVar);
    }

    private boolean b(ps psVar, ps psVar2) {
        if (psVar2.m) {
            View a = ab.a(psVar2);
            if (a == null) {
                b.d("Could not get mediation view");
                return false;
            }
            View nextView = this.f.f.getNextView();
            if (nextView != null) {
                if (nextView instanceof sz) {
                    ((sz) nextView).destroy();
                }
                this.f.f.removeView(nextView);
            }
            if (!ab.b(psVar2)) {
                try {
                    a(a);
                } catch (Throwable th) {
                    b.d("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (!(psVar2.t == null || psVar2.b == null)) {
            psVar2.b.a(psVar2.t);
            this.f.f.removeAllViews();
            this.f.f.setMinimumWidth(psVar2.t.g);
            this.f.f.setMinimumHeight(psVar2.t.d);
            a(psVar2.b.b());
        }
        if (this.f.f.getChildCount() > 1) {
            this.f.f.showNext();
        }
        if (psVar != null) {
            View nextView2 = this.f.f.getNextView();
            if (nextView2 instanceof sz) {
                ((sz) nextView2).a(this.f.c, this.f.i, this.a);
            } else if (nextView2 != null) {
                this.f.f.removeView(nextView2);
            }
            this.f.d();
        }
        this.f.f.setVisibility(0);
        return true;
    }

    private void e(ps psVar) {
        if (this.f.e()) {
            if (psVar.b != null) {
                if (psVar.j != null) {
                    this.h.a(this.f.i, psVar);
                }
                if (psVar.a()) {
                    this.h.a(this.f.i, psVar).a(psVar.b);
                } else {
                    psVar.b.l().a(new p(this, psVar));
                }
            }
        } else if (this.f.C != null && psVar.j != null) {
            this.h.a(this.f.i, psVar, this.f.C);
        }
    }

    protected sz a(pt ptVar, l lVar) {
        if (this.f.i.j) {
            this.f.i = b(ptVar);
        }
        return super.a(ptVar, lVar);
    }

    protected void a(ps psVar, boolean z) {
        super.a(psVar, z);
        if (ab.b(psVar)) {
            ab.a(psVar, new q(this));
        }
    }

    public void a(boolean z) {
        bm.b("setManualImpressionsEnabled must be called from the main thread.");
        this.l = z;
    }

    public boolean a(AdRequestParcel adRequestParcel) {
        return super.a(d(adRequestParcel));
    }

    public boolean a(ps psVar, ps psVar2) {
        if (!super.a(psVar, psVar2)) {
            return false;
        }
        if (!this.f.e() || b(psVar, psVar2)) {
            if (psVar2.k) {
                d(psVar2);
                su.a(this.f.f, (OnGlobalLayoutListener) this);
                su.a(this.f.f, (OnScrollChangedListener) this);
            } else if (!this.f.f() || ((Boolean) cj.aG.c()).booleanValue()) {
                a(psVar2, false);
            }
            e(psVar2);
            return true;
        }
        a(0);
        return false;
    }

    AdRequestParcel d(AdRequestParcel adRequestParcel) {
        if (adRequestParcel.h == this.l) {
            return adRequestParcel;
        }
        int i = adRequestParcel.a;
        long j = adRequestParcel.b;
        Bundle bundle = adRequestParcel.c;
        int i2 = adRequestParcel.d;
        List list = adRequestParcel.e;
        boolean z = adRequestParcel.f;
        int i3 = adRequestParcel.g;
        boolean z2 = adRequestParcel.h || this.l;
        return new AdRequestParcel(i, j, bundle, i2, list, z, i3, z2, adRequestParcel.i, adRequestParcel.j, adRequestParcel.k, adRequestParcel.l, adRequestParcel.m, adRequestParcel.n, adRequestParcel.o, adRequestParcel.p, adRequestParcel.q, adRequestParcel.r);
    }

    void d(ps psVar) {
        if (psVar != null && !psVar.l && this.f.f != null && ar.e().a(this.f.f, this.f.c) && this.f.f.getGlobalVisibleRect(new Rect(), null)) {
            a(psVar, false);
            psVar.l = true;
        }
    }

    public void f() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    public void onGlobalLayout() {
        d(this.f.j);
    }

    public void onScrollChanged() {
        d(this.f.j);
    }

    protected boolean s() {
        boolean z = true;
        if (!ar.e().a(this.f.c.getPackageManager(), this.f.c.getPackageName(), "android.permission.INTERNET")) {
            aa.a().a(this.f.f, this.f.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!ar.e().a(this.f.c)) {
            aa.a().a(this.f.f, this.f.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!(z || this.f.f == null)) {
            this.f.f.setVisibility(0);
        }
        return z;
    }
}
