package com.google.android.gms.location.places;

import android.os.Parcel;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collection;
import java.util.List;

public class AutocompleteFilter implements SafeParcelable {
    public static final f CREATOR;
    final int a;
    final boolean b;
    final List<Integer> c;
    final int d;

    static {
        CREATOR = new f();
    }

    AutocompleteFilter(int i, boolean z, List<Integer> list) {
        boolean z2 = true;
        this.a = i;
        this.c = list;
        this.d = a(list);
        if (this.a < 1) {
            if (z) {
                z2 = false;
            }
            this.b = z2;
            return;
        }
        this.b = z;
    }

    private static int a(@Nullable Collection<Integer> collection) {
        return (collection == null || collection.isEmpty()) ? 0 : ((Integer) collection.iterator().next()).intValue();
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteFilter)) {
            return false;
        }
        return this.d == this.d && this.b == ((AutocompleteFilter) obj).b;
    }

    public int hashCode() {
        return bj.a(Boolean.valueOf(this.b), Integer.valueOf(this.d));
    }

    public String toString() {
        return bj.a((Object) this).a("includeQueryPredictions", Boolean.valueOf(this.b)).a("typeFilter", Integer.valueOf(this.d)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
