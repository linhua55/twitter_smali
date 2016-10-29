package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class t implements Creator<Video> {
    t() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Video a(Parcel parcel) {
        return new Video(parcel);
    }

    public Video[] a(int i) {
        return new Video[i];
    }
}
