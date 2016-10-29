package com.twitter.android.moments.viewmodels;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class r implements Creator<MomentGuideSection> {
    r() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentGuideSection a(Parcel parcel) {
        return new MomentGuideSection(parcel);
    }

    public MomentGuideSection[] a(int i) {
        return new MomentGuideSection[i];
    }
}
