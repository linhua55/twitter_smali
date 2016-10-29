package com.google.android.exoplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class MediaFormat$1 implements Creator<MediaFormat> {
    MediaFormat$1() {
    }

    public MediaFormat createFromParcel(Parcel parcel) {
        return new MediaFormat(parcel);
    }

    public MediaFormat[] newArray(int i) {
        return new MediaFormat[i];
    }
}
