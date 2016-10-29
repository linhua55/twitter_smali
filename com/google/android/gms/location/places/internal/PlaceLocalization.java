package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@Deprecated
public final class PlaceLocalization implements SafeParcelable {
    public static final d CREATOR;
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final List<String> f;

    static {
        CREATOR = new d();
    }

    public PlaceLocalization(int i, String str, String str2, String str3, String str4, List<String> list) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = list;
    }

    public int describeContents() {
        d dVar = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceLocalization)) {
            return false;
        }
        PlaceLocalization placeLocalization = (PlaceLocalization) obj;
        return bj.a(this.b, placeLocalization.b) && bj.a(this.c, placeLocalization.c) && bj.a(this.d, placeLocalization.d) && bj.a(this.e, placeLocalization.e) && bj.a(this.f, placeLocalization.f);
    }

    public int hashCode() {
        return bj.a(new Object[]{this.b, this.c, this.d, this.e});
    }

    public String toString() {
        return bj.a(this).a("name", this.b).a("address", this.c).a("internationalPhoneNumber", this.d).a("regularOpenHours", this.e).a("attributions", this.f).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        d dVar = CREATOR;
        d.a(this, parcel, i);
    }
}
