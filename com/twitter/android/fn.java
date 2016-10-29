package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fn implements Creator<AddPhonePinEntryStep> {
    fn() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AddPhonePinEntryStep a(Parcel parcel) {
        return new AddPhonePinEntryStep(parcel);
    }

    public AddPhonePinEntryStep[] a(int i) {
        return new AddPhonePinEntryStep[i];
    }
}
