package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class i implements Creator<FoundMediaOrigin> {
    i() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FoundMediaOrigin a(Parcel parcel) {
        return new FoundMediaOrigin(parcel);
    }

    public FoundMediaOrigin[] a(int i) {
        return new FoundMediaOrigin[i];
    }
}
