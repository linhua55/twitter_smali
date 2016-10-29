package com.google.android.gms.location.places;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.concurrent.TimeUnit;

public final class PlaceRequest implements SafeParcelable {
    public static final Creator<PlaceRequest> CREATOR;
    static final long a;
    final int b;
    private final PlaceFilter c;
    private final long d;
    private final int e;
    private final long f;

    static {
        CREATOR = new m();
        a = TimeUnit.HOURS.toMillis(1);
    }

    public PlaceRequest(int i, PlaceFilter placeFilter, long j, int i2, long j2) {
        this.b = i;
        this.c = placeFilter;
        this.d = j;
        this.e = i2;
        this.f = j2;
    }

    public PlaceFilter a() {
        return this.c;
    }

    public long b() {
        return this.d;
    }

    public int c() {
        return this.e;
    }

    public long d() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceRequest)) {
            return false;
        }
        PlaceRequest placeRequest = (PlaceRequest) obj;
        return bj.a(this.c, placeRequest.c) && this.d == placeRequest.d && this.e == placeRequest.e && this.f == placeRequest.f;
    }

    public int hashCode() {
        return bj.a(this.c, Long.valueOf(this.d), Integer.valueOf(this.e), Long.valueOf(this.f));
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return bj.a((Object) this).a("filter", this.c).a("interval", Long.valueOf(this.d)).a("priority", Integer.valueOf(this.e)).a("expireAt", Long.valueOf(this.f)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}
