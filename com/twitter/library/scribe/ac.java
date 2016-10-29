package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ac implements Creator<ScribeKeyValuesHolder> {
    ac() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeKeyValuesHolder a(Parcel parcel) {
        return new ScribeKeyValuesHolder(parcel);
    }

    public ScribeKeyValuesHolder[] a(int i) {
        return new ScribeKeyValuesHolder[i];
    }
}
