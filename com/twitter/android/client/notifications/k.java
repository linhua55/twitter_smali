package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class k implements Creator<GenericNotif> {
    k() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public GenericNotif a(Parcel parcel) {
        return new GenericNotif(parcel);
    }

    public GenericNotif[] a(int i) {
        return new GenericNotif[i];
    }
}
