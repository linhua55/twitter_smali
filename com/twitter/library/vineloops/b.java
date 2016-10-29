package com.twitter.library.vineloops;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<VineLoopAggregator$Record> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VineLoopAggregator$Record a(Parcel parcel) {
        return new VineLoopAggregator$Record(null);
    }

    public VineLoopAggregator$Record[] a(int i) {
        return new VineLoopAggregator$Record[i];
    }
}
