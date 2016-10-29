package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;
import java.util.Collections;
import java.util.List;

@oi
public final class AdResponseParcel implements SafeParcelable {
    public static final s CREATOR;
    public String A;
    public boolean B;
    public boolean C;
    @Nullable
    public RewardItemParcel D;
    @Nullable
    public List<String> E;
    @Nullable
    public List<String> F;
    @Nullable
    public boolean G;
    private AdRequestInfoParcel H;
    public final int a;
    public final String b;
    public String c;
    public final List<String> d;
    public final int e;
    public final List<String> f;
    public final long g;
    public final boolean h;
    public final long i;
    public final List<String> j;
    public final long k;
    public final int l;
    public final String m;
    public final long n;
    public final String o;
    public final boolean p;
    public final String q;
    public final String r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final int x;
    public LargeParcelTeleporter y;
    public String z;

    static {
        CREATOR = new s();
    }

    public AdResponseParcel(int i) {
        this(16, null, null, null, i, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, true, false, 0, null, null, null, false, false, null, null, null, false);
    }

    public AdResponseParcel(int i, long j) {
        this(16, null, null, null, i, null, -1, false, -1, null, j, -1, null, -1, null, false, null, null, false, false, false, true, false, 0, null, null, null, false, false, null, null, null, false);
    }

    AdResponseParcel(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i4, LargeParcelTeleporter largeParcelTeleporter, String str7, String str8, boolean z8, boolean z9, RewardItemParcel rewardItemParcel, List<String> list4, List<String> list5, boolean z10) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list != null ? Collections.unmodifiableList(list) : null;
        this.e = i2;
        this.f = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.g = j;
        this.h = z;
        this.i = j2;
        this.j = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.k = j3;
        this.l = i3;
        this.m = str3;
        this.n = j4;
        this.o = str4;
        this.p = z2;
        this.q = str5;
        this.r = str6;
        this.s = z3;
        this.t = z4;
        this.u = z5;
        this.v = z6;
        this.w = z7;
        this.x = i4;
        this.y = largeParcelTeleporter;
        this.z = str7;
        this.A = str8;
        if (this.c == null && this.y != null) {
            StringParcel stringParcel = (StringParcel) this.y.a(StringParcel.CREATOR);
            if (!(stringParcel == null || TextUtils.isEmpty(stringParcel.a()))) {
                this.c = stringParcel.a();
            }
        }
        this.B = z8;
        this.C = z9;
        this.D = rewardItemParcel;
        this.E = list4;
        this.F = list5;
        this.G = z10;
    }

    public AdResponseParcel(AdRequestInfoParcel adRequestInfoParcel, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, String str5, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i2, String str6, boolean z7, boolean z8, RewardItemParcel rewardItemParcel, List<String> list4, List<String> list5, boolean z9) {
        this(16, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, false, null, str5, z2, z3, z4, z5, z6, i2, null, null, str6, z7, z8, rewardItemParcel, list4, list5, z9);
        this.H = adRequestInfoParcel;
    }

    public AdResponseParcel(AdRequestInfoParcel adRequestInfoParcel, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, String str7, boolean z8, boolean z9, RewardItemParcel rewardItemParcel, List<String> list4, List<String> list5, boolean z10) {
        this(16, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, i2, null, null, str7, z8, z9, rewardItemParcel, list4, list5, z10);
        this.H = adRequestInfoParcel;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (!(this.H == null || this.H.a < 9 || TextUtils.isEmpty(this.c))) {
            this.y = new LargeParcelTeleporter(new StringParcel(this.c));
            this.c = null;
        }
        s.a(this, parcel, i);
    }
}
