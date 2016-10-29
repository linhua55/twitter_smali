package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<MediaEntityPlaylist> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaEntityPlaylist a(Parcel parcel) {
        return new MediaEntityPlaylist(parcel);
    }

    public MediaEntityPlaylist[] a(int i) {
        return new MediaEntityPlaylist[i];
    }
}
