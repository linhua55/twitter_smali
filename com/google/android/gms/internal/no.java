package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.aj;
import com.google.android.gms.ads.internal.b;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@oi
public class no {
    public rj a(Context context, b bVar, pt ptVar, y yVar, sz szVar, kd kdVar, np npVar, cy cyVar) {
        rj nsVar;
        AdResponseParcel adResponseParcel = ptVar.b;
        if (adResponseParcel.h) {
            nsVar = new ns(context, ptVar, kdVar, npVar, cyVar, szVar);
        } else if (!adResponseParcel.t) {
            nsVar = adResponseParcel.p ? new nl(context, ptVar, szVar, npVar) : (((Boolean) cj.U.c()).booleanValue() && vu.g() && !vu.i() && szVar.k().e) ? new nr(context, ptVar, szVar, npVar) : new nq(context, ptVar, szVar, npVar);
        } else if (bVar instanceof aj) {
            nsVar = new nu(context, (aj) bVar, new hz(), ptVar, yVar, npVar);
        } else {
            throw new IllegalArgumentException("Invalid NativeAdManager type. Found: " + (bVar != null ? bVar.getClass().getName() : "null") + "; Required: NativeAdManager.");
        }
        com.google.android.gms.ads.internal.util.client.b.a("AdRenderer: " + nsVar.getClass().getName());
        nsVar.e();
        return nsVar;
    }
}
