package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlaceLikelihoodEntity implements SafeParcelable {
    public static final Creator<PlaceLikelihoodEntity> CREATOR;
    final int a;
    final PlaceImpl b;
    final float c;

    static {
        CREATOR = new c();
    }

    PlaceLikelihoodEntity(int i, PlaceImpl placeImpl, float f) {
        this.a = i;
        this.b = placeImpl;
        this.c = f;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceLikelihoodEntity)) {
            return false;
        }
        PlaceLikelihoodEntity placeLikelihoodEntity = (PlaceLikelihoodEntity) obj;
        return this.b.equals(placeLikelihoodEntity.b) && this.c == placeLikelihoodEntity.c;
    }

    public int hashCode() {
        return bj.a(this.b, Float.valueOf(this.c));
    }

    public String toString() {
        return bj.a((Object) this).a("place", this.b).a("likelihood", Float.valueOf(this.c)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
