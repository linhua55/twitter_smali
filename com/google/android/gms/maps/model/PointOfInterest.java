package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class PointOfInterest implements SafeParcelable {
    public static final r CREATOR;
    public final LatLng a;
    public final String b;
    public final String c;
    private final int d;

    static {
        CREATOR = new r();
    }

    PointOfInterest(int i, LatLng latLng, String str, String str2) {
        this.d = i;
        this.a = latLng;
        this.b = str;
        this.c = str2;
    }

    int a() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        r.a(this, parcel, i);
    }
}
