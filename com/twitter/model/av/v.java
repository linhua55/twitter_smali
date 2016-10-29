package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class v implements Creator<VideoCta> {
    v() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoCta a(Parcel parcel) {
        return new VideoCta(parcel);
    }

    public VideoCta[] a(int i) {
        return new VideoCta[i];
    }
}
