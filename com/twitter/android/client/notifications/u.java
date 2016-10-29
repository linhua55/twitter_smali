package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class u implements Creator<MediaTagNotif> {
    u() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MediaTagNotif a(Parcel parcel) {
        return new MediaTagNotif(parcel);
    }

    public MediaTagNotif[] a(int i) {
        return new MediaTagNotif[i];
    }
}
