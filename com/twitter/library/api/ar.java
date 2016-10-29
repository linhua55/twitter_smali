package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ar implements Creator<TwitterLocation> {
    ar() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterLocation a(Parcel parcel) {
        return new TwitterLocation(parcel);
    }

    public TwitterLocation[] a(int i) {
        return new TwitterLocation[i];
    }
}
