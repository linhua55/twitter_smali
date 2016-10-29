package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class w implements Creator<ScribeItemMediaDetails> {
    w() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeItemMediaDetails a(Parcel parcel) {
        return new ScribeItemMediaDetails(parcel);
    }

    public ScribeItemMediaDetails[] a(int i) {
        return new ScribeItemMediaDetails[i];
    }
}
