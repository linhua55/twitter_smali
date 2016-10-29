package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ag implements Creator<SecurityScribeLog> {
    ag() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SecurityScribeLog a(Parcel parcel) {
        return new SecurityScribeLog(parcel);
    }

    public SecurityScribeLog[] a(int i) {
        return new SecurityScribeLog[i];
    }
}
