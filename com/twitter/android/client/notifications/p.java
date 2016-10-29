package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class p implements Creator<LoginVerificationNotif> {
    p() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LoginVerificationNotif a(Parcel parcel) {
        return new LoginVerificationNotif(parcel);
    }

    public LoginVerificationNotif[] a(int i) {
        return new LoginVerificationNotif[i];
    }
}
