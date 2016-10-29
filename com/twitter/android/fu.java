package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.PhoneSignupStep;

/* compiled from: Twttr */
final class fu implements Creator<PhoneSignupStep> {
    fu() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PhoneSignupStep a(Parcel parcel) {
        return new PhoneSignupStep(parcel);
    }

    public PhoneSignupStep[] a(int i) {
        return new PhoneSignupStep[i];
    }
}
