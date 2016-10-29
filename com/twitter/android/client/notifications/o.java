package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class o implements Creator<LifelineTweetNotif> {
    o() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LifelineTweetNotif a(Parcel parcel) {
        return new LifelineTweetNotif(parcel);
    }

    public LifelineTweetNotif[] a(int i) {
        return new LifelineTweetNotif[i];
    }
}
