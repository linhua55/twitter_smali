package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.NameEntryStep;

/* compiled from: Twttr */
final class fr implements Creator<NameEntryStep> {
    fr() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public NameEntryStep a(Parcel parcel) {
        return new NameEntryStep(parcel);
    }

    public NameEntryStep[] a(int i) {
        return new NameEntryStep[i];
    }
}
