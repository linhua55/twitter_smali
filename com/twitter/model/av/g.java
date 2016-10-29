package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import cni;
import com.twitter.util.ab;

/* compiled from: Twttr */
final class g implements Creator<DynamicAd> {
    g() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DynamicAd a(Parcel parcel) {
        return new DynamicAd(parcel.readString(), parcel.readInt(), (cni) ab.a(parcel, cni.a), (DynamicAdMediaInfo) parcel.readParcelable(DynamicAdMediaInfo.class.getClassLoader()));
    }

    public DynamicAd[] a(int i) {
        return new DynamicAd[i];
    }
}
