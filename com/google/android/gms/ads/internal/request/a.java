package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
public final class a {
    public final String A;
    public final float B;
    public final int C;
    public final int D;
    public final Bundle a;
    public final AdRequestParcel b;
    public final AdSizeParcel c;
    public final String d;
    public final ApplicationInfo e;
    public final PackageInfo f;
    public final String g;
    public final String h;
    public final Bundle i;
    public final VersionInfoParcel j;
    public final int k;
    public final List<String> l;
    public final List<String> m;
    public final Bundle n;
    public final boolean o;
    public final Messenger p;
    public final int q;
    public final int r;
    public final float s;
    public final String t;
    public final long u;
    public final String v;
    public final List<String> w;
    public final String x;
    public final NativeAdOptionsParcel y;
    public final CapabilityParcel z;

    public a(Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, VersionInfoParcel versionInfoParcel, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i, int i2, float f, String str4, long j, String str5, List<String> list3, String str6, NativeAdOptionsParcel nativeAdOptionsParcel, CapabilityParcel capabilityParcel, String str7, float f2, int i3, int i4) {
        this.a = bundle;
        this.b = adRequestParcel;
        this.c = adSizeParcel;
        this.d = str;
        this.e = applicationInfo;
        this.f = packageInfo;
        this.g = str2;
        this.h = str3;
        this.j = versionInfoParcel;
        this.i = bundle2;
        this.o = z;
        this.p = messenger;
        this.q = i;
        this.r = i2;
        this.s = f;
        if (list == null || list.size() <= 0) {
            if (adSizeParcel.k) {
                this.k = 4;
            } else {
                this.k = 0;
            }
            this.l = null;
            this.m = null;
        } else {
            this.k = 3;
            this.l = list;
            this.m = list2;
        }
        this.n = bundle3;
        this.t = str4;
        this.u = j;
        this.v = str5;
        this.w = list3;
        this.x = str6;
        this.y = nativeAdOptionsParcel;
        this.z = capabilityParcel;
        this.A = str7;
        this.B = f2;
        this.C = i3;
        this.D = i4;
    }
}
