package com.twitter.android.smartfollow.finishingtimeline;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<FinishingTimelineState> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FinishingTimelineState a(Parcel parcel) {
        return new FinishingTimelineState(parcel);
    }

    public FinishingTimelineState[] a(int i) {
        return new FinishingTimelineState[i];
    }
}
