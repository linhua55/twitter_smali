package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.scribe.ScribeGeoDetails.ScribeGeoPlace;

/* compiled from: Twttr */
final class v implements Creator<ScribeGeoPlace> {
    v() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeGeoPlace a(Parcel parcel) {
        return new ScribeGeoPlace(parcel);
    }

    public ScribeGeoPlace[] a(int i) {
        return new ScribeGeoPlace[i];
    }
}
