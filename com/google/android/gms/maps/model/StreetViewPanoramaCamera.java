package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StreetViewPanoramaCamera implements SafeParcelable {
    public static final u CREATOR;
    public final float a;
    public final float b;
    public final float c;
    private final int d;
    private StreetViewPanoramaOrientation e;

    static {
        CREATOR = new u();
    }

    StreetViewPanoramaCamera(int i, float f, float f2, float f3) {
        boolean z = -90.0f <= f2 && f2 <= 90.0f;
        bm.b(z, "Tilt needs to be between -90 and 90 inclusive");
        this.d = i;
        if (((double) f) <= 0.0d) {
            f = 0.0f;
        }
        this.a = f;
        this.b = f2 + 0.0f;
        this.c = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
        this.e = new i().a(f2).b(f3).a();
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
        if (!(obj instanceof StreetViewPanoramaCamera)) {
            return false;
        }
        StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera) obj;
        return Float.floatToIntBits(this.a) == Float.floatToIntBits(streetViewPanoramaCamera.a) && Float.floatToIntBits(this.b) == Float.floatToIntBits(streetViewPanoramaCamera.b) && Float.floatToIntBits(this.c) == Float.floatToIntBits(streetViewPanoramaCamera.c);
    }

    public int hashCode() {
        return bj.a(Float.valueOf(this.a), Float.valueOf(this.b), Float.valueOf(this.c));
    }

    public String toString() {
        return bj.a((Object) this).a("zoom", Float.valueOf(this.a)).a("tilt", Float.valueOf(this.b)).a("bearing", Float.valueOf(this.c)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        u.a(this, parcel, i);
    }
}
