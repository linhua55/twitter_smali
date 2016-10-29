package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class xu implements Creator<ValidationState> {
    xu() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ValidationState a(Parcel parcel) {
        return new ValidationState(parcel);
    }

    public ValidationState[] a(int i) {
        return new ValidationState[i];
    }
}
