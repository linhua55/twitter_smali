package com.twitter.model.login;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<OneFactorEligibleFactor> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public OneFactorEligibleFactor a(Parcel parcel) {
        return new OneFactorEligibleFactor(null);
    }

    public OneFactorEligibleFactor[] a(int i) {
        return new OneFactorEligibleFactor[i];
    }
}
