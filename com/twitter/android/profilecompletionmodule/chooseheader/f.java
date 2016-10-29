package com.twitter.android.profilecompletionmodule.chooseheader;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<ChooseHeaderState> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ChooseHeaderState a(Parcel parcel) {
        return new ChooseHeaderState(parcel);
    }

    public ChooseHeaderState[] a(int i) {
        return new ChooseHeaderState[i];
    }
}
