package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.qw;
import com.google.android.gms.internal.sz;

@oi
public abstract class e extends c implements r, lw {
    public e(Context context, AdSizeParcel adSizeParcel, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        super(context, adSizeParcel, str, kdVar, versionInfoParcel, kVar);
    }

    public void A() {
        y();
        h();
    }

    public void B() {
        n();
    }

    protected sz a(pt ptVar, l lVar) {
        jh jhVar;
        View nextView = this.f.f.getNextView();
        sz szVar;
        if (nextView instanceof sz) {
            b.a("Reusing webview...");
            szVar = (sz) nextView;
            szVar.a(this.f.c, this.f.i, this.a);
            jhVar = szVar;
        } else {
            if (nextView != null) {
                this.f.f.removeView(nextView);
            }
            szVar = ar.f().a(this.f.c, this.f.i, false, false, this.f.d, this.f.e, this.a, this.i);
            if (this.f.i.h == null) {
                a(szVar.b());
            }
            jhVar = szVar;
        }
        jhVar.l().a(this, this, this, this, false, this, null, lVar, this);
        a(jhVar);
        jhVar.b(ptVar.a.w);
        return jhVar;
    }

    public void a(int i, int i2, int i3, int i4) {
        p();
    }

    public void a(de deVar) {
        bm.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f.x = deVar;
    }

    protected void a(jh jhVar) {
        jhVar.a("/trackActiveViewUnit", new f(this));
    }

    protected void a(pt ptVar, cy cyVar) {
        if (ptVar.e != -2) {
            qw.a.post(new g(this, ptVar));
            return;
        }
        if (ptVar.d != null) {
            this.f.i = ptVar.d;
        }
        if (!ptVar.b.h || ptVar.b.C) {
            qw.a.post(new h(this, ptVar, cyVar));
            return;
        }
        this.f.D = 0;
        this.f.h = ar.d().a(this.f.c, this, ptVar, this.f.d, null, this.j, this, cyVar);
    }

    protected boolean a(ps psVar, ps psVar2) {
        if (this.f.e() && this.f.f != null) {
            this.f.f.a().a(psVar2.A);
        }
        return super.a(psVar, psVar2);
    }

    public void b(View view) {
        this.f.C = view;
        b(new ps(this.f.k, null, null, null, null, null, null));
    }

    public void z() {
        e();
    }
}
