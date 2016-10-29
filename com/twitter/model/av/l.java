package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class l implements Creator<InvalidPlaylist> {
    l() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public InvalidPlaylist a(Parcel parcel) {
        return new InvalidPlaylist(parcel);
    }

    public InvalidPlaylist[] a(int i) {
        return new InvalidPlaylist[0];
    }
}
