package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class k implements Creator<MomentScribeDetails$Dismiss> {
    k() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentScribeDetails$Dismiss a(Parcel parcel) {
        return new MomentScribeDetails$Dismiss(null);
    }

    public MomentScribeDetails$Dismiss[] a(int i) {
        return new MomentScribeDetails$Dismiss[i];
    }
}
