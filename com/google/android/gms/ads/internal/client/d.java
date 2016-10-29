package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.h;
import com.google.android.gms.ads.purchase.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.nd;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.oi;
import java.util.concurrent.atomic.AtomicBoolean;

@oi
public class d {
    private final kc a;
    private final v b;
    private final AtomicBoolean c;
    private a d;
    private a e;
    private ar f;
    private g[] g;
    private String h;
    private String i;
    private ViewGroup j;
    private com.google.android.gms.ads.doubleclick.a k;
    private b l;
    private com.google.android.gms.ads.purchase.d m;
    private c n;
    private boolean o;
    private h p;
    private boolean q;

    public d(ViewGroup viewGroup) {
        this(viewGroup, null, false, v.a(), false);
    }

    public d(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, v.a(), false);
    }

    d(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, v vVar, ar arVar, boolean z2) {
        this.a = new kc();
        this.j = viewGroup;
        this.b = vVar;
        this.f = arVar;
        this.c = new AtomicBoolean(false);
        this.q = z2;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzk com_google_android_gms_ads_internal_client_zzk = new zzk(context, attributeSet);
                this.g = com_google_android_gms_ads_internal_client_zzk.a(z);
                this.h = com_google_android_gms_ads_internal_client_zzk.a();
                if (viewGroup.isInEditMode()) {
                    aa.a().a(viewGroup, a(context, this.g[0], this.q), "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                aa.a().a(viewGroup, new AdSizeParcel(context, g.a), e.getMessage(), e.getMessage());
            }
        }
    }

    d(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, v vVar, boolean z2) {
        this(viewGroup, attributeSet, z, vVar, null, z2);
    }

    public d(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, boolean z2) {
        this(viewGroup, attributeSet, z, v.a(), z2);
    }

    public d(ViewGroup viewGroup, boolean z) {
        this(viewGroup, null, false, v.a(), z);
    }

    private static AdSizeParcel a(Context context, g gVar, boolean z) {
        AdSizeParcel adSizeParcel = new AdSizeParcel(context, gVar);
        adSizeParcel.a(z);
        return adSizeParcel;
    }

    private static AdSizeParcel a(Context context, g[] gVarArr, boolean z) {
        AdSizeParcel adSizeParcel = new AdSizeParcel(context, gVarArr);
        adSizeParcel.a(z);
        return adSizeParcel;
    }

    private void n() {
        try {
            j a = this.f.a();
            if (a != null) {
                this.j.addView((View) m.a(a));
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to get an ad frame.", e);
        }
    }

    public void a() {
        try {
            if (this.f != null) {
                this.f.b();
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to destroy AdView.", e);
        }
    }

    public void a(a aVar) {
        try {
            this.d = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new q(aVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", e);
        }
    }

    public void a(com.google.android.gms.ads.doubleclick.a aVar) {
        try {
            this.k = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new x(aVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AppEventListener.", e);
        }
    }

    public void a(c cVar) {
        this.n = cVar;
        try {
            if (this.f != null) {
                this.f.a(cVar != null ? new dh(cVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public void a(h hVar) {
        this.p = hVar;
        try {
            if (this.f != null) {
                this.f.a(this.p == null ? null : this.p.a());
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set correlator.", e);
        }
    }

    public void a(a aVar) {
        try {
            this.e = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new p(aVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdClickListener.", e);
        }
    }

    public void a(b bVar) {
        try {
            if (this.f == null) {
                l();
            }
            if (this.f.a(this.b.a(this.j.getContext(), bVar))) {
                this.a.a(bVar.j());
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to load ad.", e);
        }
    }

    public void a(b bVar) {
        if (this.m != null) {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        try {
            this.l = bVar;
            if (this.f != null) {
                this.f.a(bVar != null ? new nd(bVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the InAppPurchaseListener.", e);
        }
    }

    public void a(String str) {
        if (this.h != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.h = str;
    }

    public void a(boolean z) {
        this.o = z;
        try {
            if (this.f != null) {
                this.f.a(this.o);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set manual impressions.", e);
        }
    }

    public void a(g... gVarArr) {
        if (this.g != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        b(gVarArr);
    }

    public a b() {
        return this.d;
    }

    public void b(g... gVarArr) {
        this.g = gVarArr;
        try {
            if (this.f != null) {
                this.f.a(a(this.j.getContext(), this.g, this.q));
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the ad size.", e);
        }
        this.j.requestLayout();
    }

    public g c() {
        try {
            if (this.f != null) {
                AdSizeParcel i = this.f.i();
                if (i != null) {
                    return i.b();
                }
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to get the current AdSize.", e);
        }
        return this.g != null ? this.g[0] : null;
    }

    public g[] d() {
        return this.g;
    }

    public String e() {
        return this.h;
    }

    public com.google.android.gms.ads.doubleclick.a f() {
        return this.k;
    }

    public b g() {
        return this.l;
    }

    public c h() {
        return this.n;
    }

    public void i() {
        try {
            if (this.f != null) {
                this.f.d();
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to call pause.", e);
        }
    }

    public void j() {
        try {
            if (this.f != null) {
                this.f.d_();
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to call resume.", e);
        }
    }

    public String k() {
        try {
            if (this.f != null) {
                return this.f.j();
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    void l() throws RemoteException {
        if ((this.g == null || this.h == null) && this.f == null) {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        this.f = m();
        if (this.d != null) {
            this.f.a(new q(this.d));
        }
        if (this.e != null) {
            this.f.a(new p(this.e));
        }
        if (this.k != null) {
            this.f.a(new x(this.k));
        }
        if (this.l != null) {
            this.f.a(new nd(this.l));
        }
        if (this.m != null) {
            this.f.a(new ng(this.m), this.i);
        }
        if (this.n != null) {
            this.f.a(new dh(this.n));
        }
        if (this.p != null) {
            this.f.a(this.p.a());
        }
        this.f.a(this.o);
        n();
    }

    protected ar m() throws RemoteException {
        Context context = this.j.getContext();
        return aa.b().a(context, a(context, this.g, this.q), this.h, this.a);
    }
}
