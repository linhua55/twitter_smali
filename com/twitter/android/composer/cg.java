package com.twitter.android.composer;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class cg implements Creator<TweetBox$SavedState> {
    cg() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TweetBox$SavedState a(Parcel parcel) {
        return new TweetBox$SavedState(parcel);
    }

    public TweetBox$SavedState[] a(int i) {
        return new TweetBox$SavedState[i];
    }
}
