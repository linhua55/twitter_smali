package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.overlay.zzk;
import com.google.android.gms.common.internal.bm;

@oi
public class sy {
    private final sz a;
    private final Context b;
    private final ViewGroup c;
    private zzk d;

    public sy(Context context, ViewGroup viewGroup, sz szVar) {
        this(context, viewGroup, szVar, null);
    }

    sy(Context context, ViewGroup viewGroup, sz szVar, zzk com_google_android_gms_ads_internal_overlay_zzk) {
        this.b = context;
        this.c = viewGroup;
        this.a = szVar;
        this.d = com_google_android_gms_ads_internal_overlay_zzk;
    }

    public zzk a() {
        bm.b("getAdVideoUnderlay must be called from the UI thread.");
        return this.d;
    }

    public void a(int i, int i2, int i3, int i4) {
        bm.b("The underlay may only be modified from the UI thread.");
        if (this.d != null) {
            this.d.a(i, i2, i3, i4);
        }
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        if (this.d == null) {
            cp.a(this.a.x().a(), this.a.w(), "vpr");
            cu a = cp.a(this.a.x().a());
            this.d = new zzk(this.b, this.a, i5, this.a.x().a(), a);
            this.c.addView(this.d, 0, new LayoutParams(-1, -1));
            this.d.a(i, i2, i3, i4);
            this.a.l().a(false);
        }
    }

    public void b() {
        bm.b("onPause must be called from the UI thread.");
        if (this.d != null) {
            this.d.h();
        }
    }

    public void c() {
        bm.b("onDestroy must be called from the UI thread.");
        if (this.d != null) {
            this.d.m();
        }
    }
}
