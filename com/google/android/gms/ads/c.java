package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.g;
import com.google.android.gms.ads.formats.i;
import com.google.android.gms.ads.internal.client.al;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.r;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.eq;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.kc;

public class c {
    private final Context a;
    private final al b;

    c(Context context, al alVar) {
        this.a = context;
        this.b = alVar;
    }

    public c(Context context, String str) {
        this((Context) bm.a(context, "context cannot be null"), r.a(context, str, new kc()));
    }

    public b a() {
        try {
            return new b(this.a, this.b.a());
        } catch (Throwable e) {
            b.b("Failed to build AdLoader.", e);
            return null;
        }
    }

    public c a(a aVar) {
        try {
            this.b.a(new q(aVar));
        } catch (Throwable e) {
            b.d("Failed to set AdListener.", e);
        }
        return this;
    }

    public c a(com.google.android.gms.ads.formats.c cVar) {
        try {
            this.b.a(new NativeAdOptionsParcel(cVar));
        } catch (Throwable e) {
            b.d("Failed to specify native ad options", e);
        }
        return this;
    }

    public c a(g gVar) {
        try {
            this.b.a(new eq(gVar));
        } catch (Throwable e) {
            b.d("Failed to add app install ad listener", e);
        }
        return this;
    }

    public c a(i iVar) {
        try {
            this.b.a(new er(iVar));
        } catch (Throwable e) {
            b.d("Failed to add content ad listener", e);
        }
        return this;
    }
}
