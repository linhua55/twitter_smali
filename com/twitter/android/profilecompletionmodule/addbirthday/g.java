package com.twitter.android.profilecompletionmodule.addbirthday;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class g implements Creator<AddBirthdayState> {
    g() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AddBirthdayState a(Parcel parcel) {
        return new AddBirthdayState(parcel);
    }

    public AddBirthdayState[] a(int i) {
        return new AddBirthdayState[i];
    }
}
