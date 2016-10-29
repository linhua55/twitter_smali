package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fm implements Creator<AddEmailStep> {
    fm() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AddEmailStep a(Parcel parcel) {
        return new AddEmailStep(parcel);
    }

    public AddEmailStep[] a(int i) {
        return new AddEmailStep[i];
    }
}
