package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qw;

@oi
class y extends qb {
    final /* synthetic */ w a;
    private final Bitmap b;
    private final String c;

    public y(w wVar, Bitmap bitmap, String str) {
        this.a = wVar;
        this.b = bitmap;
        this.c = str;
    }

    public void a() {
        InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(this.a.f.F, this.a.C(), this.a.f.F ? ar.e().a(this.a.f.c, this.b, this.c) : false ? this.c : null, this.a.m, this.a.n);
        int q = this.a.f.j.b.q();
        if (q == -1) {
            q = this.a.f.j.g;
        }
        qw.a.post(new z(this, new AdOverlayInfoParcel(this.a, this.a, this.a, this.a.f.j.b, q, this.a.f.e, this.a.f.j.A, interstitialAdParameterParcel)));
    }

    public void b() {
    }
}
