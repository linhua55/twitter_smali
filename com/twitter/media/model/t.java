package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class t implements Creator<VideoFile> {
    t() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoFile a(Parcel parcel) {
        return new VideoFile(parcel);
    }

    public VideoFile[] a(int i) {
        return new VideoFile[i];
    }
}
