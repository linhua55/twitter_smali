package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlaceReport implements SafeParcelable {
    public static final Creator<PlaceReport> CREATOR;
    final int a;
    private final String b;
    private final String c;
    private final String d;

    static {
        CREATOR = new l();
    }

    PlaceReport(int i, String str, String str2, String str3) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return bj.a(this.b, placeReport.b) && bj.a(this.c, placeReport.c) && bj.a(this.d, placeReport.d);
    }

    public int hashCode() {
        return bj.a(this.b, this.c, this.d);
    }

    public String toString() {
        bl a = bj.a((Object) this);
        a.a("placeId", this.b);
        a.a("tag", this.c);
        if (!"unknown".equals(this.d)) {
            a.a("source", this.d);
        }
        return a.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        l.a(this, parcel, i);
    }
}
