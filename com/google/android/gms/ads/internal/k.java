package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.s;
import com.google.android.gms.ads.internal.overlay.u;
import com.google.android.gms.ads.internal.overlay.v;
import com.google.android.gms.ads.internal.overlay.y;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.oi;

@oi
public class k {
    public final gk a;
    public final s b;
    public final u c;

    public k(gk gkVar, s sVar, u uVar) {
        this.a = gkVar;
        this.b = sVar;
        this.c = uVar;
    }

    public static k a() {
        return new k(new ev(), new v(), new y());
    }
}
