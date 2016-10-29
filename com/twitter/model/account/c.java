package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<LoginResponse> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LoginResponse a(Parcel parcel) {
        return new LoginResponse(parcel);
    }

    public LoginResponse[] a(int i) {
        return new LoginResponse[i];
    }
}
