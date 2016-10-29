package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.twitter.android.mx;

public final class NearbyAlertRequest implements SafeParcelable {
    public static final h CREATOR;
    private final int a;
    private final int b;
    private final int c;
    @Deprecated
    private final PlaceFilter d;
    private final NearbyAlertFilter e;
    private final boolean f;
    private final int g;
    private int h;

    static {
        CREATOR = new h();
    }

    NearbyAlertRequest(int i, int i2, int i3, PlaceFilter placeFilter, NearbyAlertFilter nearbyAlertFilter, boolean z, int i4, int i5) {
        this.h = mx.AppCompatTheme_spinnerStyle;
        this.a = i;
        this.b = i2;
        this.c = i3;
        if (nearbyAlertFilter != null) {
            this.e = nearbyAlertFilter;
        } else if (placeFilter == null) {
            this.e = null;
        } else if (placeFilter.a() != null && !placeFilter.a().isEmpty()) {
            this.e = NearbyAlertFilter.a(placeFilter.a());
        } else if (placeFilter.b() == null || placeFilter.b().isEmpty()) {
            this.e = null;
        } else {
            this.e = NearbyAlertFilter.b(placeFilter.b());
        }
        this.d = null;
        this.f = z;
        this.g = i4;
        this.h = i5;
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    @Deprecated
    public PlaceFilter d() {
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public NearbyAlertFilter e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NearbyAlertRequest)) {
            return false;
        }
        NearbyAlertRequest nearbyAlertRequest = (NearbyAlertRequest) obj;
        return this.b == nearbyAlertRequest.b && this.c == nearbyAlertRequest.c && bj.a(this.e, nearbyAlertRequest.e) && this.h == nearbyAlertRequest.h;
    }

    public boolean f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public int h() {
        return this.h;
    }

    public int hashCode() {
        return bj.a(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), this.e, Integer.valueOf(this.h)});
    }

    public String toString() {
        return bj.a(this).a("transitionTypes", Integer.valueOf(this.b)).a("loiteringTimeMillis", Integer.valueOf(this.c)).a("nearbyAlertFilter", this.e).a("priority", Integer.valueOf(this.h)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}
