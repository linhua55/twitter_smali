package com.twitter.media.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<SegmentedVideoFile> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SegmentedVideoFile a(Parcel parcel) {
        return new SegmentedVideoFile(parcel);
    }

    public SegmentedVideoFile[] a(int i) {
        return new SegmentedVideoFile[i];
    }
}
