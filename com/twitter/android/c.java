package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<AbsPagesAdapter$PageSavedState> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AbsPagesAdapter$PageSavedState a(Parcel parcel) {
        return new AbsPagesAdapter$PageSavedState(parcel);
    }

    public AbsPagesAdapter$PageSavedState[] a(int i) {
        return new AbsPagesAdapter$PageSavedState[i];
    }
}
