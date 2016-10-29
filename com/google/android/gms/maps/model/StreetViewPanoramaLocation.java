package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StreetViewPanoramaLocation implements SafeParcelable {
    public static final w CREATOR;
    public final StreetViewPanoramaLink[] a;
    public final LatLng b;
    public final String c;
    private final int d;

    static {
        CREATOR = new w();
    }

    StreetViewPanoramaLocation(int i, StreetViewPanoramaLink[] streetViewPanoramaLinkArr, LatLng latLng, String str) {
        this.d = i;
        this.a = streetViewPanoramaLinkArr;
        this.b = latLng;
        this.c = str;
    }

    int a() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLocation)) {
            return false;
        }
        StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation) obj;
        return this.c.equals(streetViewPanoramaLocation.c) && this.b.equals(streetViewPanoramaLocation.b);
    }

    public int hashCode() {
        return bj.a(this.b, this.c);
    }

    public String toString() {
        return bj.a((Object) this).a("panoId", this.c).a("position", this.b.toString()).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        w.a(this, parcel, i);
    }
}
