package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.ax;
import com.google.android.gms.ads.internal.client.ba;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.purchase.n;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.na;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.pz;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.sc;
import com.google.android.gms.internal.ta;
import com.google.android.gms.internal.y;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@oi
public final class zzs implements OnGlobalLayoutListener, OnScrollChangedListener {
    n A;
    public pz B;
    View C;
    public int D;
    boolean E;
    boolean F;
    @Nullable
    private String G;
    private HashSet<pu> H;
    private int I;
    private int J;
    private sc K;
    private boolean L;
    private boolean M;
    private boolean N;
    final String a;
    public String b;
    public final Context c;
    final y d;
    public final VersionInfoParcel e;
    zza f;
    public qb g;
    public rj h;
    public AdSizeParcel i;
    public ps j;
    public pt k;
    public pu l;
    ac m;
    af n;
    ax o;
    ba p;
    mo q;
    na r;
    ed s;
    eg t;
    SimpleArrayMap<String, ej> u;
    SimpleArrayMap<String, em> v;
    NativeAdOptionsParcel w;
    de x;
    @Nullable
    g y;
    List<String> z;

    public zzs(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel) {
        this(context, adSizeParcel, str, versionInfoParcel, null);
    }

    zzs(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel, y yVar) {
        this.B = null;
        this.C = null;
        this.D = 0;
        this.E = false;
        this.F = false;
        this.H = null;
        this.I = -1;
        this.J = -1;
        this.L = true;
        this.M = true;
        this.N = false;
        cj.a(context);
        if (ar.h().e() != null) {
            List b = cj.b();
            if (versionInfoParcel.c != 0) {
                b.add(Integer.toString(versionInfoParcel.c));
            }
            ar.h().e().a(b);
        }
        this.a = UUID.randomUUID().toString();
        if (adSizeParcel.e || adSizeParcel.i) {
            this.f = null;
        } else {
            this.f = new zza(context, this, this);
            this.f.setMinimumWidth(adSizeParcel.g);
            this.f.setMinimumHeight(adSizeParcel.d);
            this.f.setVisibility(4);
        }
        this.i = adSizeParcel;
        this.b = str;
        this.c = context;
        this.e = versionInfoParcel;
        if (yVar == null) {
            yVar = new y(new s(this));
        }
        this.d = yVar;
        this.K = new sc(200);
        this.v = new SimpleArrayMap();
    }

    private void b(boolean z) {
        boolean z2 = true;
        if (this.f != null && this.j != null && this.j.b != null) {
            if (!z || this.K.a()) {
                if (this.j.b.l().b()) {
                    int[] iArr = new int[2];
                    this.f.getLocationOnScreen(iArr);
                    int b = aa.a().b(this.c, iArr[0]);
                    int b2 = aa.a().b(this.c, iArr[1]);
                    if (!(b == this.I && b2 == this.J)) {
                        this.I = b;
                        this.J = b2;
                        ta l = this.j.b.l();
                        b = this.I;
                        int i = this.J;
                        if (z) {
                            z2 = false;
                        }
                        l.a(b, i, z2);
                    }
                }
                k();
            }
        }
    }

    private void k() {
        View findViewById = this.f.getRootView().findViewById(16908290);
        if (findViewById != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            this.f.getGlobalVisibleRect(rect);
            findViewById.getGlobalVisibleRect(rect2);
            if (rect.top != rect2.top) {
                this.L = false;
            }
            if (rect.bottom != rect2.bottom) {
                this.M = false;
            }
        }
    }

    public HashSet<pu> a() {
        return this.H;
    }

    void a(String str) {
        this.G = str;
    }

    public void a(HashSet<pu> hashSet) {
        this.H = hashSet;
    }

    public void a(boolean z) {
        if (this.D == 0) {
            c();
        }
        if (this.g != null) {
            this.g.d();
        }
        if (this.h != null) {
            this.h.d();
        }
        if (z) {
            this.j = null;
        }
    }

    public void b() {
        if (this.j != null && this.j.b != null) {
            this.j.b.destroy();
        }
    }

    public void c() {
        if (this.j != null && this.j.b != null) {
            this.j.b.stopLoading();
        }
    }

    public void d() {
        if (this.j != null && this.j.o != null) {
            try {
                this.j.o.c();
            } catch (RemoteException e) {
                b.d("Could not destroy mediation adapter.");
            }
        }
    }

    public boolean e() {
        return this.D == 0;
    }

    public boolean f() {
        return this.D == 1;
    }

    public void g() {
        if (this.f != null) {
            this.f.b();
        }
    }

    public String h() {
        return (this.L && this.M) ? BuildConfig.VERSION_NAME : this.L ? this.N ? "top-scrollable" : "top-locked" : this.M ? this.N ? "bottom-scrollable" : "bottom-locked" : BuildConfig.VERSION_NAME;
    }

    public void i() {
        this.l.a(this.j.y);
        this.l.b(this.j.z);
        this.l.a(this.i.e);
        this.l.b(this.j.m);
    }

    public void j() {
        g();
        this.n = null;
        this.o = null;
        this.r = null;
        this.q = null;
        this.x = null;
        this.p = null;
        a(false);
        if (this.f != null) {
            this.f.removeAllViews();
        }
        b();
        d();
        this.j = null;
    }

    public void onGlobalLayout() {
        b(false);
    }

    public void onScrollChanged() {
        b(true);
        this.N = true;
    }
}
