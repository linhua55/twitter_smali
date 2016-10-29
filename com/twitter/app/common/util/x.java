package com.twitter.app.common.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class x implements Creator<Empty> {
    x() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Empty a(Parcel parcel) {
        return new Empty();
    }

    public Empty[] a(int i) {
        return new Empty[i];
    }
}
