package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class p implements Creator<TwitterTypeAheadGroup> {
    p() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterTypeAheadGroup a(Parcel parcel) {
        return new TwitterTypeAheadGroup(parcel);
    }

    public TwitterTypeAheadGroup[] a(int i) {
        return new TwitterTypeAheadGroup[i];
    }
}
