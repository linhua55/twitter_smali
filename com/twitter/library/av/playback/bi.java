package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bi implements Creator<DMAVDataSource> {
    bi() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DMAVDataSource a(Parcel parcel) {
        return new DMAVDataSource(null);
    }

    public DMAVDataSource[] a(int i) {
        return new DMAVDataSource[0];
    }
}
