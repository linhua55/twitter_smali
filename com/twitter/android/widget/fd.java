package com.twitter.android.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fd implements Creator<ToggleImageButton$SavedState> {
    fd() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ToggleImageButton$SavedState a(Parcel parcel) {
        return new ToggleImageButton$SavedState(parcel);
    }

    public ToggleImageButton$SavedState[] a(int i) {
        return new ToggleImageButton$SavedState[i];
    }
}
