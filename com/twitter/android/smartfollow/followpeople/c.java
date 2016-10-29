package com.twitter.android.smartfollow.followpeople;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<FollowPeopleState> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FollowPeopleState a(Parcel parcel) {
        return new FollowPeopleState(parcel);
    }

    public FollowPeopleState[] a(int i) {
        return new FollowPeopleState[i];
    }
}
