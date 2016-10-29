package com.twitter.android.profilecompletionmodule.addbio;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<AddBioState> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public AddBioState a(Parcel parcel) {
        return new AddBioState(parcel);
    }

    public AddBioState[] a(int i) {
        return new AddBioState[i];
    }
}
