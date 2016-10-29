package com.twitter.library.view;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class v implements Creator<SavedState> {
    v() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SavedState a(Parcel parcel) {
        return new SavedState(null);
    }

    public SavedState[] a(int i) {
        return new SavedState[i];
    }
}
