package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ConnectionEvent extends h implements SafeParcelable {
    public static final Creator<ConnectionEvent> CREATOR;
    final int a;
    private final long b;
    private int c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final long j;
    private final long k;
    private long l;

    static {
        CREATOR = new a();
    }

    ConnectionEvent(int i, long j, int i2, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.l = -1;
        this.h = str5;
        this.i = str6;
        this.j = j2;
        this.k = j3;
    }

    public ConnectionEvent(long j, int i, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this(1, j, i, str, str2, str3, str4, str5, str6, j2, j3);
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
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.h;
    }

    public String h() {
        return this.i;
    }

    public long i() {
        return this.l;
    }

    public long j() {
        return this.k;
    }

    public long k() {
        return this.j;
    }

    public String l() {
        return "\t" + c() + "/" + d() + "\t" + e() + "/" + f() + "\t" + (this.h == null ? TtmlNode.ANONYMOUS_REGION_ID : this.h) + "\t" + j();
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
