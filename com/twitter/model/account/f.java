package com.twitter.model.account;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<LvEligibilityResponse> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LvEligibilityResponse a(Parcel parcel) {
        return new LvEligibilityResponse(parcel);
    }

    public LvEligibilityResponse[] a(int i) {
        return new LvEligibilityResponse[i];
    }
}
