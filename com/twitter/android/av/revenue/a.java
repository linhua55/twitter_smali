package com.twitter.android.av.revenue;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<VideoAppCardData> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoAppCardData a(Parcel parcel) {
        return new VideoAppCardData(parcel);
    }

    public VideoAppCardData[] a(int i) {
        return new VideoAppCardData[i];
    }
}
