package com.twitter.library.provider;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ca implements Creator<ParcelableMatrixCursor> {
    ca() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ParcelableMatrixCursor a(Parcel parcel) {
        return new ParcelableMatrixCursor(parcel);
    }

    public ParcelableMatrixCursor[] a(int i) {
        return new ParcelableMatrixCursor[i];
    }
}
