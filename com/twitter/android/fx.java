package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fx implements Creator<UsernameEntryStep> {
    fx() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public UsernameEntryStep a(Parcel parcel) {
        return new UsernameEntryStep(parcel);
    }

    public UsernameEntryStep[] a(int i) {
        return new UsernameEntryStep[i];
    }
}
