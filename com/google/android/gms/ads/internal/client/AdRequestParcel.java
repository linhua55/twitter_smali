package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
public final class AdRequestParcel implements SafeParcelable {
    public static final u CREATOR;
    public final int a;
    public final long b;
    public final Bundle c;
    public final int d;
    public final List<String> e;
    public final boolean f;
    public final int g;
    public final boolean h;
    public final String i;
    public final SearchAdRequestParcel j;
    public final Location k;
    public final String l;
    public final Bundle m;
    public final Bundle n;
    public final List<String> o;
    public final String p;
    public final String q;
    public final boolean r;

    static {
        CREATOR = new u();
    }

    public AdRequestParcel(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, SearchAdRequestParcel searchAdRequestParcel, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.a = i;
        this.b = j;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.c = bundle;
        this.d = i2;
        this.e = list;
        this.f = z;
        this.g = i3;
        this.h = z2;
        this.i = str;
        this.j = searchAdRequestParcel;
        this.k = location;
        this.l = str2;
        this.m = bundle2;
        this.n = bundle3;
        this.o = list2;
        this.p = str3;
        this.q = str4;
        this.r = z3;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdRequestParcel)) {
            return false;
        }
        AdRequestParcel adRequestParcel = (AdRequestParcel) obj;
        return this.a == adRequestParcel.a && this.b == adRequestParcel.b && bj.a(this.c, adRequestParcel.c) && this.d == adRequestParcel.d && bj.a(this.e, adRequestParcel.e) && this.f == adRequestParcel.f && this.g == adRequestParcel.g && this.h == adRequestParcel.h && bj.a(this.i, adRequestParcel.i) && bj.a(this.j, adRequestParcel.j) && bj.a(this.k, adRequestParcel.k) && bj.a(this.l, adRequestParcel.l) && bj.a(this.m, adRequestParcel.m) && bj.a(this.n, adRequestParcel.n) && bj.a(this.o, adRequestParcel.o) && bj.a(this.p, adRequestParcel.p) && bj.a(this.q, adRequestParcel.q) && this.r == adRequestParcel.r;
    }

    public int hashCode() {
        return bj.a(new Object[]{Integer.valueOf(this.a), Long.valueOf(this.b), this.c, Integer.valueOf(this.d), this.e, Boolean.valueOf(this.f), Integer.valueOf(this.g), Boolean.valueOf(this.h), this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, Boolean.valueOf(this.r)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        u.a(this, parcel, i);
    }
}
