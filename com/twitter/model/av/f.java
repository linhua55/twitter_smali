package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<AudioPlaylist> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AudioPlaylist a(Parcel parcel) {
        return new AudioPlaylist(parcel);
    }

    public AudioPlaylist[] a(int i) {
        return new AudioPlaylist[i];
    }
}
