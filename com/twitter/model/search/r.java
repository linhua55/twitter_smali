package com.twitter.model.search;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<TwitterUserMetadata> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TwitterUserMetadata a(Parcel parcel) {
        return new TwitterUserMetadata(parcel);
    }

    public TwitterUserMetadata[] a(int i) {
        return new TwitterUserMetadata[i];
    }
}
