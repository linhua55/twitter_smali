package com.twitter.library.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bd implements Creator<Session> {
    bd() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Session a(Parcel parcel) {
        return new Session(parcel);
    }

    public Session[] a(int i) {
        return new Session[i];
    }
}
