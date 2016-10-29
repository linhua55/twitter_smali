package com.twitter.library.commerce.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ar implements Creator<ServerError> {
    ar() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ServerError a(Parcel parcel) {
        return new ServerError(parcel, null);
    }

    public ServerError[] a(int i) {
        return new ServerError[i];
    }
}
