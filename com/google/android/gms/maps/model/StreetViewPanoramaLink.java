package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StreetViewPanoramaLink implements SafeParcelable {
    public static final v CREATOR;
    public final String a;
    public final float b;
    private final int c;

    static {
        CREATOR = new v();
    }

    StreetViewPanoramaLink(int i, String str, float f) {
        this.c = i;
        this.a = str;
        if (((double) f) <= 0.0d) {
            f = (f % 360.0f) + 360.0f;
        }
        this.b = f % 360.0f;
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
        if (!(obj instanceof StreetViewPanoramaLink)) {
            return false;
        }
        StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink) obj;
        return this.a.equals(streetViewPanoramaLink.a) && Float.floatToIntBits(this.b) == Float.floatToIntBits(streetViewPanoramaLink.b);
    }

    public int hashCode() {
        return bj.a(this.a, Float.valueOf(this.b));
    }

    public String toString() {
        return bj.a((Object) this).a("panoId", this.a).a("bearing", Float.valueOf(this.b)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        v.a(this, parcel, i);
    }
}
