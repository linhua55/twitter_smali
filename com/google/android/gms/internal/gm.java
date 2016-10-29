package com.google.android.gms.internal;

import android.content.Context;
import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.w;

@oi
public class gm {
    private MutableContextWrapper a;
    private final kd b;
    private final VersionInfoParcel c;
    private final k d;

    gm(Context context, kd kdVar, VersionInfoParcel versionInfoParcel, k kVar) {
        this.a = new MutableContextWrapper(context.getApplicationContext());
        this.b = kdVar;
        this.c = versionInfoParcel;
        this.d = kVar;
    }

    public w a(String str) {
        return new w(this.a, new AdSizeParcel(), str, this.b, this.c, this.d);
    }

    public gm a() {
        return new gm(this.a.getBaseContext(), this.b, this.c, this.d);
    }

    public MutableContextWrapper b() {
        return this.a;
    }
}
