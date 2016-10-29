package com.twitter.library.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ad implements Creator<SlidingUpPanelLayout$SavedState> {
    ad() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SlidingUpPanelLayout$SavedState a(Parcel parcel) {
        return new SlidingUpPanelLayout$SavedState(null);
    }

    public SlidingUpPanelLayout$SavedState[] a(int i) {
        return new SlidingUpPanelLayout$SavedState[i];
    }
}
