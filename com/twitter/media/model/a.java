package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<AnimatedGifFile> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AnimatedGifFile a(Parcel parcel) {
        return new AnimatedGifFile(parcel);
    }

    public AnimatedGifFile[] a(int i) {
        return new AnimatedGifFile[i];
    }
}
