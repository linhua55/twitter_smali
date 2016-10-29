package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<DeviceTweetNotif> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DeviceTweetNotif a(Parcel parcel) {
        return new DeviceTweetNotif(parcel);
    }

    public DeviceTweetNotif[] a(int i) {
        return new DeviceTweetNotif[i];
    }
}
