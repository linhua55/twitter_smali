package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class d implements Creator<LoginVerificationRequest> {
    d() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LoginVerificationRequest a(Parcel parcel) {
        return new LoginVerificationRequest(parcel);
    }

    public LoginVerificationRequest[] a(int i) {
        return new LoginVerificationRequest[i];
    }
}
