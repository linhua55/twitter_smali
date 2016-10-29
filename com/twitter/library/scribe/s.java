package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class s implements Creator<ScribeAltTextMedia> {
    s() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeAltTextMedia a(Parcel parcel) {
        return new ScribeAltTextMedia(parcel);
    }

    public ScribeAltTextMedia[] a(int i) {
        return new ScribeAltTextMedia[i];
    }
}
