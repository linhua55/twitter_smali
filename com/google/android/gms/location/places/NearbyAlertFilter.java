package com.google.android.gms.location.places;

import android.os.Parcel;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class NearbyAlertFilter extends d implements SafeParcelable {
    public static final g CREATOR;
    final int a;
    final List<String> b;
    final List<Integer> c;
    final List<UserDataType> d;
    final String e;
    final boolean f;
    private final Set<String> g;
    private final Set<Integer> h;
    private final Set<UserDataType> i;

    static {
        CREATOR = new g();
    }

    NearbyAlertFilter(int i, @Nullable List<String> list, @Nullable List<Integer> list2, @Nullable List<UserDataType> list3, @Nullable String str, boolean z) {
        this.a = i;
        this.c = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.d = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.b = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.h = d.a(this.c);
        this.i = d.a(this.d);
        this.g = d.a(this.b);
        this.e = str;
        this.f = z;
    }

    public static NearbyAlertFilter a(Collection<String> collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, d.c(collection), null, null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace ID to match results with.");
    }

    public static NearbyAlertFilter b(Collection<Integer> collection) {
        if (collection != null && !collection.isEmpty()) {
            return new NearbyAlertFilter(0, null, d.c(collection), null, null, false);
        }
        throw new IllegalArgumentException("NearbyAlertFilters must contain at least oneplace type to match results with.");
    }

    public boolean a() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NearbyAlertFilter)) {
            return false;
        }
        NearbyAlertFilter nearbyAlertFilter = (NearbyAlertFilter) obj;
        return (this.e != null || nearbyAlertFilter.e == null) ? this.h.equals(nearbyAlertFilter.h) && this.i.equals(nearbyAlertFilter.i) && this.g.equals(nearbyAlertFilter.g) && ((this.e == null || this.e.equals(nearbyAlertFilter.e)) && this.f == nearbyAlertFilter.a()) : false;
    }

    public int hashCode() {
        return bj.a(this.h, this.i, this.g, this.e, Boolean.valueOf(this.f));
    }

    public String toString() {
        bl a = bj.a((Object) this);
        if (!this.h.isEmpty()) {
            a.a("types", this.h);
        }
        if (!this.g.isEmpty()) {
            a.a("placeIds", this.g);
        }
        if (!this.i.isEmpty()) {
            a.a("requestedUserDataTypes", this.i);
        }
        if (this.e != null) {
            a.a("chainName", this.e);
        }
        a.a("Beacon required: ", Boolean.valueOf(this.f));
        return a.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}
