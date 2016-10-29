package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<Audio> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Audio a(Parcel parcel) {
        return new Audio(parcel);
    }

    public Audio[] a(int i) {
        return new Audio[i];
    }
}
