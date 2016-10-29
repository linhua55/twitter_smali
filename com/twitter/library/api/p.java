package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class p implements Creator<ClientConfiguration> {
    p() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ClientConfiguration a(Parcel parcel) {
        return new ClientConfiguration(parcel);
    }

    public ClientConfiguration[] a(int i) {
        return new ClientConfiguration[i];
    }
}
