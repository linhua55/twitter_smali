package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class j implements Creator<FollowRequestNotif> {
    j() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FollowRequestNotif a(Parcel parcel) {
        return new FollowRequestNotif(parcel);
    }

    public FollowRequestNotif[] a(int i) {
        return new FollowRequestNotif[i];
    }
}
