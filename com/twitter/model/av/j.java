package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class j implements Creator<DynamicAdMediaInfo> {
    j() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DynamicAdMediaInfo a(Parcel parcel) {
        return new DynamicAdMediaInfo(parcel);
    }

    public DynamicAdMediaInfo[] a(int i) {
        return new DynamicAdMediaInfo[i];
    }
}
