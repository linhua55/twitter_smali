package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlaceAliasResult implements w, SafeParcelable {
    public static final Creator<PlaceAliasResult> CREATOR;
    final int a;
    final PlaceUserData b;
    private final Status c;

    static {
        CREATOR = new b();
    }

    PlaceAliasResult(int i, Status status, PlaceUserData placeUserData) {
        this.a = i;
        this.c = status;
        this.b = placeUserData;
    }

    public Status a() {
        return this.c;
    }

    public PlaceUserData b() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
