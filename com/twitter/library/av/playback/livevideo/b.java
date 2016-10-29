package com.twitter.library.av.playback.livevideo;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<LiveVideoDataSource> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LiveVideoDataSource a(Parcel parcel) {
        return new LiveVideoDataSource(parcel);
    }

    public LiveVideoDataSource[] a(int i) {
        return new LiveVideoDataSource[i];
    }
}
