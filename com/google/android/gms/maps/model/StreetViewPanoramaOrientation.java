package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StreetViewPanoramaOrientation implements SafeParcelable {
    public static final x CREATOR;
    public final float a;
    public final float b;
    private final int c;

    static {
        CREATOR = new x();
    }

    public StreetViewPanoramaOrientation(float f, float f2) {
        this(1, f, f2);
    }

    StreetViewPanoramaOrientation(int i, float f, float f2) {
        boolean z = -90.0f <= f && f <= 90.0f;
        bm.b(z, "Tilt needs to be between -90 and 90 inclusive");
        this.c = i;
        this.a = 0.0f + f;
        if (((double) f2) <= 0.0d) {
            f2 = (f2 % 360.0f) + 360.0f;
        }
        this.b = f2 % 360.0f;
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
        if (!(obj instanceof StreetViewPanoramaOrientation)) {
            return false;
        }
        StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation) obj;
        return Float.floatToIntBits(this.a) == Float.floatToIntBits(streetViewPanoramaOrientation.a) && Float.floatToIntBits(this.b) == Float.floatToIntBits(streetViewPanoramaOrientation.b);
    }

    public int hashCode() {
        return bj.a(Float.valueOf(this.a), Float.valueOf(this.b));
    }

    public String toString() {
        return bj.a((Object) this).a("tilt", Float.valueOf(this.a)).a("bearing", Float.valueOf(this.b)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        x.a(this, parcel, i);
    }
}
