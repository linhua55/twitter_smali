package com.twitter.android.smartfollow.interestpicker;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class d implements Creator<InterestPickerState> {
    d() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public InterestPickerState a(Parcel parcel) {
        return new InterestPickerState(parcel);
    }

    public InterestPickerState[] a(int i) {
        return new InterestPickerState[i];
    }
}
