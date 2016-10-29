package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public final class WakeLockEvent extends h implements SafeParcelable {
    public static final Creator<WakeLockEvent> CREATOR;
    final int a;
    private final long b;
    private int c;
    private final String d;
    private final int e;
    private final List<String> f;
    private final String g;
    private final long h;
    private int i;
    private final String j;
    private final String k;
    private final float l;
    private final long m;
    private long n;

    static {
        CREATOR = new j();
    }

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = str;
        this.j = str3;
        this.e = i3;
        this.n = -1;
        this.f = list;
        this.g = str2;
        this.h = j2;
        this.i = i4;
        this.k = str4;
        this.l = f;
        this.m = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3) {
        this(1, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3);
    }

    public long a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.j;
    }

    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.e;
    }

    public List<String> f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    public long h() {
        return this.h;
    }

    public long i() {
        return this.n;
    }

    public int j() {
        return this.i;
    }

    public String k() {
        return this.k;
    }

    public String l() {
        return "\t" + c() + "\t" + e() + "\t" + (f() == null ? TtmlNode.ANONYMOUS_REGION_ID : TextUtils.join(",", f())) + "\t" + j() + "\t" + (d() == null ? TtmlNode.ANONYMOUS_REGION_ID : d()) + "\t" + (k() == null ? TtmlNode.ANONYMOUS_REGION_ID : k()) + "\t" + m();
    }

    public float m() {
        return this.l;
    }

    public long n() {
        return this.m;
    }

    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
