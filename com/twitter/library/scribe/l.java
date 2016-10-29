package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class l implements Creator<MomentScribeDetails$Engagement> {
    l() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MomentScribeDetails$Engagement a(Parcel parcel) {
        return new MomentScribeDetails$Engagement(null);
    }

    public MomentScribeDetails$Engagement[] a(int i) {
        return new MomentScribeDetails$Engagement[i];
    }
}
