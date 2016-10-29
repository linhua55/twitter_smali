package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class h implements Creator<DynamicAdInfo> {
    h() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DynamicAdInfo a(Parcel parcel) {
        return new DynamicAdInfo((DynamicAd) parcel.readParcelable(DynamicAd.class.getClassLoader()), parcel.readString());
    }

    public DynamicAdInfo[] a(int i) {
        return new DynamicAdInfo[i];
    }
}
