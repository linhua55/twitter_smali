package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class fq implements Creator<GladYouAreHereStep> {
    fq() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public GladYouAreHereStep a(Parcel parcel) {
        return new GladYouAreHereStep(parcel);
    }

    public GladYouAreHereStep[] a(int i) {
        return new GladYouAreHereStep[i];
    }
}
