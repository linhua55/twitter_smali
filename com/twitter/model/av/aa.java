package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class aa implements Creator<VinePlaylist> {
    aa() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VinePlaylist a(Parcel parcel) {
        return new VinePlaylist(null);
    }

    public VinePlaylist[] a(int i) {
        return new VinePlaylist[i];
    }
}
