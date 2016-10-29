package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;
import java.util.Collections;
import java.util.List;

@oi
public final class AdRequestInfoParcel implements SafeParcelable {
    public static final q CREATOR;
    public final List<String> A;
    public final long B;
    public final CapabilityParcel C;
    public final String D;
    public final float E;
    public final int F;
    public final int G;
    public final int a;
    public final Bundle b;
    public final AdRequestParcel c;
    public final AdSizeParcel d;
    public final String e;
    public final ApplicationInfo f;
    public final PackageInfo g;
    public final String h;
    public final String i;
    public final String j;
    public final VersionInfoParcel k;
    public final Bundle l;
    public final int m;
    public final List<String> n;
    public final Bundle o;
    public final boolean p;
    public final Messenger q;
    public final int r;
    public final int s;
    public final float t;
    public final String u;
    public final long v;
    public final String w;
    public final List<String> x;
    public final String y;
    public final NativeAdOptionsParcel z;

    static {
        CREATOR = new q();
    }

    AdRequestInfoParcel(int i, Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, Messenger messenger, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list3, long j2, CapabilityParcel capabilityParcel, String str8, float f2, int i5, int i6) {
        this.a = i;
        this.b = bundle;
        this.c = adRequestParcel;
        this.d = adSizeParcel;
        this.e = str;
        this.f = applicationInfo;
        this.g = packageInfo;
        this.h = str2;
        this.i = str3;
        this.j = str4;
        this.k = versionInfoParcel;
        this.l = bundle2;
        this.m = i2;
        this.n = list;
        this.A = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.o = bundle3;
        this.p = z;
        this.q = messenger;
        this.r = i3;
        this.s = i4;
        this.t = f;
        this.u = str5;
        this.v = j;
        this.w = str6;
        this.x = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.y = str7;
        this.z = nativeAdOptionsParcel;
        this.B = j2;
        this.C = capabilityParcel;
        this.D = str8;
        this.E = f2;
        this.F = i5;
        this.G = i6;
    }

    public AdRequestInfoParcel(Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i2, int i3, float f, String str5, long j, String str6, List<String> list3, String str7, NativeAdOptionsParcel nativeAdOptionsParcel, long j2, CapabilityParcel capabilityParcel, String str8, float f2, int i4, int i5) {
        this(15, bundle, adRequestParcel, adSizeParcel, str, applicationInfo, packageInfo, str2, str3, str4, versionInfoParcel, bundle2, i, list, bundle3, z, messenger, i2, i3, f, str5, j, str6, list3, str7, nativeAdOptionsParcel, list2, j2, capabilityParcel, str8, f2, i4, i5);
    }

    public AdRequestInfoParcel(a aVar, String str, long j) {
        String str2 = str;
        long j2 = j;
        this(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e, aVar.f, str2, aVar.g, aVar.h, aVar.j, aVar.i, aVar.k, aVar.l, aVar.m, aVar.n, aVar.o, aVar.p, aVar.q, aVar.r, aVar.s, aVar.t, aVar.u, aVar.v, aVar.w, aVar.x, aVar.y, j2, aVar.z, aVar.A, aVar.B, aVar.C, aVar.D);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        q.a(this, parcel, i);
    }
}
