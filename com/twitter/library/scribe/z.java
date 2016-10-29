package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<ScribeItemShared> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeItemShared a(Parcel parcel) {
        return new ScribeItemShared(parcel);
    }

    public ScribeItemShared[] a(int i) {
        return new ScribeItemShared[i];
    }
}
