package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ge implements Creator<FollowFlowController> {
    ge() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FollowFlowController a(Parcel parcel) {
        return new FollowFlowController(parcel, null);
    }

    public FollowFlowController[] a(int i) {
        return new FollowFlowController[i];
    }
}
