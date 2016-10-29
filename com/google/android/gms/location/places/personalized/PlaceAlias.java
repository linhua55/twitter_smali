package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlaceAlias implements SafeParcelable {
    public static final a CREATOR;
    public static final PlaceAlias a;
    public static final PlaceAlias b;
    final int c;
    private final String d;

    static {
        CREATOR = new a();
        a = new PlaceAlias(0, "Home");
        b = new PlaceAlias(0, "Work");
    }

    PlaceAlias(int i, String str) {
        this.c = i;
        this.d = str;
    }

    public String a() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceAlias)) {
            return false;
        }
        return bj.a(this.d, ((PlaceAlias) obj).d);
    }

    public int hashCode() {
        return bj.a(this.d);
    }

    public String toString() {
        return bj.a((Object) this).a("alias", this.d).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
