package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class LocationRequestInternal implements SafeParcelable {
    public static final ac CREATOR;
    static final List<ClientIdentity> a;
    LocationRequest b;
    boolean c;
    boolean d;
    boolean e;
    List<ClientIdentity> f;
    @Nullable
    String g;
    boolean h;
    private final int i;

    static {
        a = Collections.emptyList();
        CREATOR = new ac();
    }

    LocationRequestInternal(int i, LocationRequest locationRequest, boolean z, boolean z2, boolean z3, List<ClientIdentity> list, @Nullable String str, boolean z4) {
        this.i = i;
        this.b = locationRequest;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = list;
        this.g = str;
        this.h = z4;
    }

    @Deprecated
    public static LocationRequestInternal a(LocationRequest locationRequest) {
        return a(null, locationRequest);
    }

    public static LocationRequestInternal a(@Nullable String str, LocationRequest locationRequest) {
        return new LocationRequestInternal(1, locationRequest, false, true, true, a, str, false);
    }

    int a() {
        return this.i;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationRequestInternal)) {
            return false;
        }
        LocationRequestInternal locationRequestInternal = (LocationRequestInternal) obj;
        return bj.a(this.b, locationRequestInternal.b) && this.c == locationRequestInternal.c && this.d == locationRequestInternal.d && this.e == locationRequestInternal.e && this.h == locationRequestInternal.h && bj.a(this.f, locationRequestInternal.f);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.b.toString());
        if (this.g != null) {
            stringBuilder.append(" tag=").append(this.g);
        }
        stringBuilder.append(" nlpDebug=").append(this.c);
        stringBuilder.append(" trigger=").append(this.e);
        stringBuilder.append(" restorePIListeners=").append(this.d);
        stringBuilder.append(" hideAppOps=").append(this.h);
        stringBuilder.append(" clients=").append(this.f);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        ac.a(this, parcel, i);
    }
}
