package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class Status implements w, SafeParcelable {
    public static final Creator<Status> CREATOR;
    public static final Status a;
    public static final Status b;
    public static final Status c;
    public static final Status d;
    public static final Status e;
    private final int f;
    private final int g;
    private final String h;
    private final PendingIntent i;

    static {
        a = new Status(0);
        b = new Status(14);
        c = new Status(8);
        d = new Status(15);
        e = new Status(16);
        CREATOR = new ad();
    }

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f = i;
        this.g = i2;
        this.h = str;
        this.i = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    private String g() {
        return this.h != null ? this.h : m.a(this.g);
    }

    public Status a() {
        return this;
    }

    PendingIntent b() {
        return this.i;
    }

    public String c() {
        return this.h;
    }

    int d() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.g <= 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f == status.f && this.g == status.g && bj.a(this.h, status.h) && bj.a(this.i, status.i);
    }

    public int f() {
        return this.g;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.f), Integer.valueOf(this.g), this.h, this.i);
    }

    public String toString() {
        return bj.a((Object) this).a("statusCode", g()).a("resolution", this.i).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        ad.a(this, parcel, i);
    }
}
