package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<VineMedia> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VineMedia a(Parcel parcel) {
        return new VineMedia(parcel);
    }

    public VineMedia[] a(int i) {
        return new VineMedia[i];
    }
}
