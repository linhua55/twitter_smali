package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class s implements Creator<Partner> {
    s() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Partner a(Parcel parcel) {
        return new Partner(parcel.readString());
    }

    public Partner[] a(int i) {
        return new Partner[i];
    }
}
