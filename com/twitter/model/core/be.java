package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class be implements Creator<Tweet> {
    be() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Tweet a(Parcel parcel) {
        return new Tweet(parcel);
    }

    public Tweet[] a(int i) {
        return new Tweet[i];
    }
}
