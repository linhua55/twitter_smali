package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LatLngBounds implements SafeParcelable {
    public static final o CREATOR;
    public final LatLng a;
    public final LatLng b;
    private final int c;

    static {
        CREATOR = new o();
    }

    LatLngBounds(int i, LatLng latLng, LatLng latLng2) {
        bm.a(latLng, "null southwest");
        bm.a(latLng2, "null northeast");
        bm.b(latLng2.a >= latLng.a, "southern latitude exceeds northern latitude (%s > %s)", new Object[]{Double.valueOf(latLng.a), Double.valueOf(latLng2.a)});
        this.c = i;
        this.a = latLng;
        this.b = latLng2;
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        this(1, latLng, latLng2);
    }

    private static double c(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    private static double d(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    int a() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.a.equals(latLngBounds.a) && this.b.equals(latLngBounds.b);
    }

    public int hashCode() {
        return bj.a(this.a, this.b);
    }

    public String toString() {
        return bj.a((Object) this).a("southwest", this.a).a("northeast", this.b).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        o.a(this, parcel, i);
    }
}
