package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class o implements Creator<MomentScribeDetails$Transition> {
    o() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentScribeDetails$Transition a(Parcel parcel) {
        return new MomentScribeDetails$Transition(null);
    }

    public MomentScribeDetails$Transition[] a(int i) {
        return new MomentScribeDetails$Transition[i];
    }
}
