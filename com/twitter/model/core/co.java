package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class co implements Creator<TwitterUser> {
    co() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterUser a(Parcel parcel) {
        return new TwitterUser(parcel);
    }

    public TwitterUser[] a(int i) {
        return new TwitterUser[i];
    }
}
