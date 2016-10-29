package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<LoginVerificationRequiredResponse> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LoginVerificationRequiredResponse a(Parcel parcel) {
        return new LoginVerificationRequiredResponse(parcel);
    }

    public LoginVerificationRequiredResponse[] a(int i) {
        return new LoginVerificationRequiredResponse[i];
    }
}
