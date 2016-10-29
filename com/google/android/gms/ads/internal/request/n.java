package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.oj;
import com.google.android.gms.internal.ok;
import com.google.android.gms.internal.so;

@oi
public final class n extends k {
    private final Context a;

    public n(Context context, so<AdRequestInfoParcel> soVar, i iVar) {
        super(soVar, iVar);
        this.a = context;
    }

    public void a() {
    }

    public u b() {
        return ok.a(this.a, new bx((String) cj.b.c()), oj.a());
    }

    public /* synthetic */ Object e() {
        return super.c();
    }
}
