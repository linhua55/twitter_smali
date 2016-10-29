package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class EventParcel implements SafeParcelable {
    public static final au CREATOR;
    public final int a;
    public final String b;
    public final EventParams c;
    public final String d;
    public final long e;

    static {
        CREATOR = new au();
    }

    EventParcel(int i, String str, EventParams eventParams, String str2, long j) {
        this.a = i;
        this.b = str;
        this.c = eventParams;
        this.d = str2;
        this.e = j;
    }

    public EventParcel(String str, EventParams eventParams, String str2, long j) {
        this.a = 1;
        this.b = str;
        this.c = eventParams;
        this.d = str2;
        this.e = j;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "origin=" + this.d + ",name=" + this.b + ",params=" + this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        au.a(this, parcel, i);
    }
}
