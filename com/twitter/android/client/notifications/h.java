package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class h implements Creator<FollowNotif> {
    h() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FollowNotif a(Parcel parcel) {
        return new FollowNotif(parcel);
    }

    public FollowNotif[] a(int i) {
        return new FollowNotif[i];
    }
}
