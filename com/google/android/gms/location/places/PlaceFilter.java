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

public final class PlaceFilter extends d implements SafeParcelable {
    public static final i CREATOR;
    private static final PlaceFilter f;
    final int a;
    final List<Integer> b;
    final boolean c;
    final List<UserDataType> d;
    final List<String> e;
    private final Set<Integer> g;
    private final Set<UserDataType> h;
    private final Set<String> i;

    static {
        CREATOR = new i();
        f = new PlaceFilter();
    }

    public PlaceFilter() {
        this(false, null);
    }

    PlaceFilter(int i, @Nullable List<Integer> list, boolean z, @Nullable List<String> list2, @Nullable List<UserDataType> list3) {
        this.a = i;
        this.b = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.c = z;
        this.d = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.g = d.a(this.b);
        this.h = d.a(this.d);
        this.i = d.a(this.e);
    }

    public PlaceFilter(@Nullable Collection<Integer> collection, boolean z, @Nullable Collection<String> collection2, @Nullable Collection<UserDataType> collection3) {
        this(0, d.c(collection), z, d.c(collection2), d.c(collection3));
    }

    public PlaceFilter(boolean z, @Nullable Collection<String> collection) {
        this(null, z, collection, null);
    }

    public Set<String> a() {
        return this.i;
    }

    public Set<Integer> b() {
        return this.g;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceFilter)) {
            return false;
        }
        PlaceFilter placeFilter = (PlaceFilter) obj;
        return this.g.equals(placeFilter.g) && this.c == placeFilter.c && this.h.equals(placeFilter.h) && this.i.equals(placeFilter.i);
    }

    public int hashCode() {
        return bj.a(this.g, Boolean.valueOf(this.c), this.h, this.i);
    }

    public String toString() {
        bl a = bj.a((Object) this);
        if (!this.g.isEmpty()) {
            a.a("types", this.g);
        }
        a.a("requireOpenNow", Boolean.valueOf(this.c));
        if (!this.i.isEmpty()) {
            a.a("placeIds", this.i);
        }
        if (!this.h.isEmpty()) {
            a.a("requestedUserDataTypes", this.h);
        }
        return a.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}
