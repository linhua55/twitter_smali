package com.twitter.model.dms;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class az implements Creator<Participant> {
    az() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Participant a(Parcel parcel) {
        return new Participant(parcel);
    }

    public Participant[] a(int i) {
        return new Participant[i];
    }
}
