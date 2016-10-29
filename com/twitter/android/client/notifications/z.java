package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class z implements Creator<RetweetNotif> {
    z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public RetweetNotif a(Parcel parcel) {
        return new RetweetNotif(parcel);
    }

    public RetweetNotif[] a(int i) {
        return new RetweetNotif[i];
    }
}
