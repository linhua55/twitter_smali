package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.i;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@oi
public class ps {
    public final String A;
    public final i B;
    public boolean C;
    public boolean D;
    public final AdRequestParcel a;
    public final sz b;
    public final List<String> c;
    public final int d;
    public final List<String> e;
    public final List<String> f;
    public final int g;
    public final long h;
    public final String i;
    public final JSONObject j;
    public final boolean k;
    public boolean l;
    public final boolean m;
    public final jn n;
    public final kg o;
    public final String p;
    public final jo q;
    public final jq r;
    public final long s;
    public final AdSizeParcel t;
    public final long u;
    @Nullable
    public final RewardItemParcel v;
    @Nullable
    public final List<String> w;
    @Nullable
    public final List<String> x;
    public final long y;
    public final long z;

    public ps(AdRequestParcel adRequestParcel, sz szVar, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, jn jnVar, kg kgVar, String str2, jo joVar, jq jqVar, long j2, AdSizeParcel adSizeParcel, long j3, long j4, long j5, String str3, JSONObject jSONObject, i iVar, RewardItemParcel rewardItemParcel, List<String> list4, List<String> list5, boolean z2) {
        this.C = false;
        this.D = false;
        this.a = adRequestParcel;
        this.b = szVar;
        this.c = a(list);
        this.d = i;
        this.e = a(list2);
        this.f = a(list3);
        this.g = i2;
        this.h = j;
        this.i = str;
        this.m = z;
        this.n = jnVar;
        this.o = kgVar;
        this.p = str2;
        this.q = joVar;
        this.r = jqVar;
        this.s = j2;
        this.t = adSizeParcel;
        this.u = j3;
        this.y = j4;
        this.z = j5;
        this.A = str3;
        this.j = jSONObject;
        this.B = iVar;
        this.v = rewardItemParcel;
        this.w = a(list4);
        this.x = a(list5);
        this.k = z2;
    }

    public ps(pt ptVar, sz szVar, jn jnVar, kg kgVar, String str, jq jqVar, i iVar) {
        sz szVar2 = szVar;
        jn jnVar2 = jnVar;
        kg kgVar2 = kgVar;
        String str2 = str;
        jq jqVar2 = jqVar;
        i iVar2 = iVar;
        this(ptVar.a.c, szVar2, ptVar.b.d, ptVar.e, ptVar.b.f, ptVar.b.j, ptVar.b.l, ptVar.b.k, ptVar.a.i, ptVar.b.h, jnVar2, kgVar2, str2, ptVar.c, jqVar2, ptVar.b.i, ptVar.d, ptVar.b.g, ptVar.f, ptVar.g, ptVar.b.o, ptVar.h, iVar2, ptVar.b.D, ptVar.b.E, ptVar.b.E, ptVar.b.G);
    }

    @Nullable
    private static <T> List<T> a(@Nullable List<T> list) {
        return list == null ? null : Collections.unmodifiableList(list);
    }

    public boolean a() {
        return (this.b == null || this.b.l() == null) ? false : this.b.l().b();
    }
}
