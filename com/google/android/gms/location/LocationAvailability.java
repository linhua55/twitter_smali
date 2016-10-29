package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LocationAvailability implements SafeParcelable {
    public static final f CREATOR;
    int a;
    int b;
    long c;
    int d;
    private final int e;

    static {
        CREATOR = new f();
    }

    LocationAvailability(int i, int i2, int i3, int i4, long j) {
        this.e = i;
        this.d = i2;
        this.a = i3;
        this.b = i4;
        this.c = j;
    }

    public boolean a() {
        return this.d < ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
    }

    int b() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.d == locationAvailability.d && this.a == locationAvailability.a && this.b == locationAvailability.b && this.c == locationAvailability.c;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.d), Integer.valueOf(this.a), Integer.valueOf(this.b), Long.valueOf(this.c));
    }

    public String toString() {
        return "LocationAvailability[isLocationAvailable: " + a() + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
