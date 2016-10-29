package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class u implements Creator<ScribeGeoDetails> {
    u() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeGeoDetails a(Parcel parcel) {
        return new ScribeGeoDetails(parcel);
    }

    public ScribeGeoDetails[] a(int i) {
        return new ScribeGeoDetails[i];
    }
}
