package com.twitter.android.eventtimelines;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class x implements Creator<SearchTimelineState> {
    x() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SearchTimelineState a(Parcel parcel) {
        return new SearchTimelineState(null);
    }

    public SearchTimelineState[] a(int i) {
        return new SearchTimelineState[i];
    }
}
