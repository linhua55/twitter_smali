package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class x implements Creator<ScribeItemSendMedia> {
    x() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ScribeItemSendMedia a(Parcel parcel) {
        return new ScribeItemSendMedia(parcel);
    }

    public ScribeItemSendMedia[] a(int i) {
        return new ScribeItemSendMedia[i];
    }
}
