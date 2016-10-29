package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class q implements Creator<MagicRecFollowNotif> {
    q() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MagicRecFollowNotif a(Parcel parcel) {
        return new MagicRecFollowNotif(parcel);
    }

    public MagicRecFollowNotif[] a(int i) {
        return new MagicRecFollowNotif[i];
    }
}
