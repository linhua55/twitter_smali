package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class y implements Creator<PollNotif> {
    y() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PollNotif a(Parcel parcel) {
        return new PollNotif(parcel);
    }

    public PollNotif[] a(int i) {
        return new PollNotif[i];
    }
}
