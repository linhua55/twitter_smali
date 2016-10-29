package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fv implements Creator<PinEntryStep> {
    fv() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PinEntryStep a(Parcel parcel) {
        return new PinEntryStep(parcel);
    }

    public PinEntryStep[] a(int i) {
        return new PinEntryStep[i];
    }
}
