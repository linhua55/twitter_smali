package com.twitter.android.timeline;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class w implements Creator {
    w() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public NewTweetsBannerState a(Parcel parcel) {
        return new NewTweetsBannerState(parcel);
    }

    public NewTweetsBannerState[] a(int i) {
        return new NewTweetsBannerState[0];
    }
}
