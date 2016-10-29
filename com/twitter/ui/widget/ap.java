package com.twitter.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ap implements Creator<TwitterEditText$SavedState> {
    ap() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterEditText$SavedState a(Parcel parcel) {
        return new TwitterEditText$SavedState(null);
    }

    public TwitterEditText$SavedState[] a(int i) {
        return new TwitterEditText$SavedState[i];
    }
}
