package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ae implements Creator<RateLimit> {
    ae() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public RateLimit a(Parcel parcel) {
        return new RateLimit(parcel);
    }

    public RateLimit[] a(int i) {
        return new RateLimit[i];
    }
}
