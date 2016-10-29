package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ga implements Creator<FlowData> {
    ga() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FlowData a(Parcel parcel) {
        return new FlowData(parcel);
    }

    public FlowData[] a(int i) {
        return new FlowData[i];
    }
}
