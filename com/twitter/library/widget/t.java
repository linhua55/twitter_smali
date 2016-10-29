package com.twitter.library.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class t implements Creator<SavedState> {
    t() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SavedState a(Parcel parcel) {
        return new SavedState(parcel);
    }

    public SavedState[] a(int i) {
        return new SavedState[i];
    }
}
