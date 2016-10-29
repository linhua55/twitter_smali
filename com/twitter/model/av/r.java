package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<MonetizationCategory> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MonetizationCategory a(Parcel parcel) {
        return new MonetizationCategory(parcel);
    }

    public MonetizationCategory[] a(int i) {
        return new MonetizationCategory[i];
    }
}
