package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<EnrollSMS2FABouncerResponse> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EnrollSMS2FABouncerResponse a(Parcel parcel) {
        return new EnrollSMS2FABouncerResponse(parcel);
    }

    public EnrollSMS2FABouncerResponse[] a(int i) {
        return new EnrollSMS2FABouncerResponse[i];
    }
}
