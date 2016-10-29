package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import org.json.JSONObject;

@oi
public final class pt {
    public final AdRequestInfoParcel a;
    public final AdResponseParcel b;
    public final jo c;
    public final AdSizeParcel d;
    public final int e;
    public final long f;
    public final long g;
    public final JSONObject h;

    public pt(AdRequestInfoParcel adRequestInfoParcel, AdResponseParcel adResponseParcel, jo joVar, AdSizeParcel adSizeParcel, int i, long j, long j2, JSONObject jSONObject) {
        this.a = adRequestInfoParcel;
        this.b = adResponseParcel;
        this.c = joVar;
        this.d = adSizeParcel;
        this.e = i;
        this.f = j;
        this.g = j2;
        this.h = jSONObject;
    }
}
