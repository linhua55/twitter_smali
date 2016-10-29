package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<FavoriteNotif> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FavoriteNotif a(Parcel parcel) {
        return new FavoriteNotif(parcel);
    }

    public FavoriteNotif[] a(int i) {
        return new FavoriteNotif[i];
    }
}
