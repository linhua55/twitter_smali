package com.twitter.android.profilecompletionmodule.chooselocation;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<ChooseLocationState> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ChooseLocationState a(Parcel parcel) {
        return new ChooseLocationState(parcel);
    }

    public ChooseLocationState[] a(int i) {
        return new ChooseLocationState[i];
    }
}
