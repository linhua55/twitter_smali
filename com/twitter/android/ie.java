package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ie implements Creator<LocationState> {
    ie() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LocationState a(Parcel parcel) {
        return new LocationState(parcel);
    }

    public LocationState[] a(int i) {
        return new LocationState[i];
    }
}
