package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class x implements Creator<VideoPlaylist> {
    x() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoPlaylist a(Parcel parcel) {
        return new VideoPlaylist(parcel, null);
    }

    public VideoPlaylist[] a(int i) {
        return new VideoPlaylist[i];
    }
}
