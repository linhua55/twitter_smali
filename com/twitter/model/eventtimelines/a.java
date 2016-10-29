package com.twitter.model.eventtimelines;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<TvShow> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TvShow a(Parcel parcel) {
        return new TvShow(parcel);
    }

    public TvShow[] a(int i) {
        return new TvShow[i];
    }
}
