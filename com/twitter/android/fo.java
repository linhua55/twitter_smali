package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.AddPhoneStep;

/* compiled from: Twttr */
final class fo implements Creator<AddPhoneStep> {
    fo() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AddPhoneStep a(Parcel parcel) {
        return new AddPhoneStep(parcel);
    }

    public AddPhoneStep[] a(int i) {
        return new AddPhoneStep[i];
    }
}
