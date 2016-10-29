package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class t implements Creator<MagicRecTweetNotif> {
    t() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MagicRecTweetNotif a(Parcel parcel) {
        return new MagicRecTweetNotif(parcel);
    }

    public MagicRecTweetNotif[] a(int i) {
        return new MagicRecTweetNotif[i];
    }
}
