package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class g implements Creator<TwitterSearchQuery> {
    g() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterSearchQuery a(Parcel parcel) {
        return new TwitterSearchQuery(parcel);
    }

    public TwitterSearchQuery[] a(int i) {
        return new TwitterSearchQuery[i];
    }
}
