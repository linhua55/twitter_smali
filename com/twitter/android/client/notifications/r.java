package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<MagicRecHashtagNotif> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MagicRecHashtagNotif a(Parcel parcel) {
        return new MagicRecHashtagNotif(parcel);
    }

    public MagicRecHashtagNotif[] a(int i) {
        return new MagicRecHashtagNotif[i];
    }
}
