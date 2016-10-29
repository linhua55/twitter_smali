package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public class nl extends nh {
    private nj g;

    nl(Context context, pt ptVar, sz szVar, np npVar) {
        super(context, ptVar, szVar, npVar);
    }

    protected void b() {
        int i;
        int i2;
        AdSizeParcel k = this.c.k();
        if (k.e) {
            DisplayMetrics displayMetrics = this.b.getResources().getDisplayMetrics();
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            i = k.g;
            i2 = k.d;
        }
        this.g = new nj(this, this.c, i, i2);
        this.c.l().a((tc) this);
        this.g.a(this.e);
    }

    protected int c() {
        if (!this.g.c()) {
            return !this.g.d() ? 2 : -2;
        } else {
            b.a("Ad-Network indicated no fill with passback URL.");
            return 3;
        }
    }
}
