package com.twitter.library.av.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<PeriscopePlaylist> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PeriscopePlaylist a(Parcel parcel) {
        return new PeriscopePlaylist(parcel);
    }

    public PeriscopePlaylist[] a(int i) {
        return new PeriscopePlaylist[i];
    }
}
