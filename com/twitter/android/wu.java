package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class wu implements Creator<UserAccount> {
    wu() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public UserAccount a(Parcel parcel) {
        return new UserAccount(parcel);
    }

    public UserAccount[] a(int i) {
        return new UserAccount[i];
    }
}
