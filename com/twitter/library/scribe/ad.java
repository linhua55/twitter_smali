package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ad implements Creator<ScribeLog$SearchDetails> {
    ad() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeLog$SearchDetails a(Parcel parcel) {
        return new ScribeLog$SearchDetails(parcel);
    }

    public ScribeLog$SearchDetails[] a(int i) {
        return new ScribeLog$SearchDetails[i];
    }
}
