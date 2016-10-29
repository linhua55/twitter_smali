package com.twitter.app.common.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class g implements Creator<UserIdentifier> {
    g() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public UserIdentifier a(Parcel parcel) {
        return new UserIdentifier(parcel);
    }

    public UserIdentifier[] a(int i) {
        return new UserIdentifier[i];
    }
}
