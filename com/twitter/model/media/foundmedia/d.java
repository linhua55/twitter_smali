package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class d implements Creator<FoundMediaImageVariant> {
    d() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FoundMediaImageVariant a(Parcel parcel) {
        return new FoundMediaImageVariant(parcel);
    }

    public FoundMediaImageVariant[] a(int i) {
        return new FoundMediaImageVariant[i];
    }
}
