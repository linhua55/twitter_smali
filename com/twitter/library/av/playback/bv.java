package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bv implements Creator<PeriscopeDataSource> {
    bv() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PeriscopeDataSource a(Parcel parcel) {
        return new PeriscopeDataSource(parcel);
    }

    public PeriscopeDataSource[] a(int i) {
        return new PeriscopeDataSource[i];
    }
}
