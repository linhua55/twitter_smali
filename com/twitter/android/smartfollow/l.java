package com.twitter.android.smartfollow;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class l implements Creator<SmartFollowFlowData> {
    l() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SmartFollowFlowData a(Parcel parcel) {
        return new SmartFollowFlowData(parcel);
    }

    public SmartFollowFlowData[] a(int i) {
        return new SmartFollowFlowData[i];
    }
}
