package com.twitter.android.geo;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<GeoTagState> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public GeoTagState a(Parcel parcel) {
        return new GeoTagState(parcel, null);
    }

    public GeoTagState[] a(int i) {
        return new GeoTagState[i];
    }
}
