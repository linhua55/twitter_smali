package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bd implements Creator<Translation> {
    bd() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Translation a(Parcel parcel) {
        return new Translation(parcel);
    }

    public Translation[] a(int i) {
        return new Translation[i];
    }
}
