package com.twitter.library.scribe.performance;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<PerformanceScribeLog> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PerformanceScribeLog a(Parcel parcel) {
        return new PerformanceScribeLog(parcel);
    }

    public PerformanceScribeLog[] a(int i) {
        return new PerformanceScribeLog[i];
    }
}
