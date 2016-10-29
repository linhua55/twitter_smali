package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<ActivitySummary> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ActivitySummary a(Parcel parcel) {
        return new ActivitySummary(parcel);
    }

    public ActivitySummary[] a(int i) {
        return new ActivitySummary[i];
    }
}
