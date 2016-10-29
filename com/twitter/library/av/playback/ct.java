package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ct implements Creator<TweetAVDataSource> {
    ct() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TweetAVDataSource a(Parcel parcel) {
        return new TweetAVDataSource(parcel);
    }

    public TweetAVDataSource[] a(int i) {
        return new TweetAVDataSource[i];
    }
}
