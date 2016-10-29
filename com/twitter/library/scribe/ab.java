package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ab implements Creator<ScribeKeyValue> {
    ab() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeKeyValue a(Parcel parcel) {
        return new ScribeKeyValue(parcel);
    }

    public ScribeKeyValue[] a(int i) {
        return new ScribeKeyValue[i];
    }
}
