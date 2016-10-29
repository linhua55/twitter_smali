package com.twitter.library.scribe.performance;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<MemoryPerformanceScribeLog> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MemoryPerformanceScribeLog a(Parcel parcel) {
        return new MemoryPerformanceScribeLog(parcel);
    }

    public MemoryPerformanceScribeLog[] a(int i) {
        return new MemoryPerformanceScribeLog[i];
    }
}
