package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fw implements Creator<PinWaitingStep> {
    fw() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PinWaitingStep a(Parcel parcel) {
        return new PinWaitingStep(parcel);
    }

    public PinWaitingStep[] a(int i) {
        return new PinWaitingStep[i];
    }
}
