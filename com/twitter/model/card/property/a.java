package com.twitter.model.card.property;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<ImageSpec> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ImageSpec a(Parcel parcel) {
        return new ImageSpec(parcel);
    }

    public ImageSpec[] a(int i) {
        return new ImageSpec[i];
    }
}
