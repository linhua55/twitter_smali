package com.twitter.android.people.adapters.viewbinders;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class l implements Creator<CarouselViewBinderSavedState> {
    l() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CarouselViewBinderSavedState a(Parcel parcel) {
        return new CarouselViewBinderSavedState(parcel);
    }

    public CarouselViewBinderSavedState[] a(int i) {
        return new CarouselViewBinderSavedState[i];
    }
}
