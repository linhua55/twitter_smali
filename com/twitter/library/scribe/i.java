package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class i implements Creator<MomentScribeDetails> {
    i() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentScribeDetails a(Parcel parcel) {
        return new MomentScribeDetails(parcel, null);
    }

    public MomentScribeDetails[] a(int i) {
        return new MomentScribeDetails[i];
    }
}
