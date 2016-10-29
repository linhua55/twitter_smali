package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class k implements Creator<FoundMediaProvider> {
    k() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FoundMediaProvider a(Parcel parcel) {
        return new FoundMediaProvider(parcel);
    }

    public FoundMediaProvider[] a(int i) {
        return new FoundMediaProvider[i];
    }
}
