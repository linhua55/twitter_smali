package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.ai;
import com.google.android.gms.ads.internal.client.am;
import com.google.android.gms.ads.internal.client.ba;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.oi;

@oi
public class v extends am {
    private af a;
    private ed b;
    private eg c;
    private SimpleArrayMap<String, ej> d;
    private SimpleArrayMap<String, em> e;
    private NativeAdOptionsParcel f;
    private ba g;
    private final Context h;
    private final kd i;
    private final String j;
    private final VersionInfoParcel k;
    private final k l;

    public v(Context context, String str, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        this.h = context;
        this.j = str;
        this.i = kdVar;
        this.k = versionInfoParcel;
        this.e = new SimpleArrayMap();
        this.d = new SimpleArrayMap();
        this.l = kVar;
    }

    public ai a() {
        return new t(this.h, this.j, this.i, this.k, this.a, this.b, this.c, this.e, this.d, this.f, this.g, this.l);
    }

    public void a(af afVar) {
        this.a = afVar;
    }

    public void a(ba baVar) {
        this.g = baVar;
    }

    public void a(NativeAdOptionsParcel nativeAdOptionsParcel) {
        this.f = nativeAdOptionsParcel;
    }

    public void a(ed edVar) {
        this.b = edVar;
    }

    public void a(eg egVar) {
        this.c = egVar;
    }

    public void a(String str, em emVar, ej ejVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.e.put(str, emVar);
        this.d.put(str, ejVar);
    }
}
