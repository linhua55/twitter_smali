package com.twitter.android.composer;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class bq implements Creator<ComposerType> {
    bq() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ComposerType a(Parcel parcel) {
        return ComposerType.values()[parcel.readInt()];
    }

    public ComposerType[] a(int i) {
        return new ComposerType[i];
    }
}
