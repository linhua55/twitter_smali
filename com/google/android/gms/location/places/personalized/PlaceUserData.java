package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class PlaceUserData implements SafeParcelable {
    public static final c CREATOR;
    final int a;
    private final String b;
    private final String c;
    private final List<PlaceAlias> d;

    static {
        CREATOR = new c();
    }

    PlaceUserData(int i, String str, String str2, List<PlaceAlias> list) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public List<PlaceAlias> c() {
        return this.d;
    }

    public int describeContents() {
        c cVar = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceUserData)) {
            return false;
        }
        PlaceUserData placeUserData = (PlaceUserData) obj;
        return this.b.equals(placeUserData.b) && this.c.equals(placeUserData.c) && this.d.equals(placeUserData.d);
    }

    public int hashCode() {
        return bj.a(this.b, this.c, this.d);
    }

    public String toString() {
        return bj.a((Object) this).a("accountName", this.b).a("placeId", this.c).a("placeAliases", this.d).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        c cVar = CREATOR;
        c.a(this, parcel, i);
    }
}
