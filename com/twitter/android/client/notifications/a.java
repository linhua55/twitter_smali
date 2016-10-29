package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<DMNotif> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DMNotif a(Parcel parcel) {
        return new DMNotif(parcel);
    }

    public DMNotif[] a(int i) {
        return new DMNotif[i];
    }
}
